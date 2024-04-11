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

/// GKE Hub API - v1
///
/// For more information, see
/// <https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster>
///
/// Create an instance of [GKEHubApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsFleetsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFeaturesResource]
///     - [ProjectsLocationsFleetsResource]
///     - [ProjectsLocationsMembershipsResource]
///       - [ProjectsLocationsMembershipsBindingsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsScopesResource]
///       - [ProjectsLocationsScopesNamespacesResource]
///       - [ProjectsLocationsScopesRbacrolebindingsResource]
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

class GKEHubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  GKEHubApi(http.Client client,
      {core.String rootUrl = 'https://gkehub.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsFleetsResource get fleets =>
      OrganizationsLocationsFleetsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsLocationsFleetsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsFleetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns all fleets within an organization or a project that the caller has
  /// access to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The organization or project to list for Fleets under,
  /// in the format `organizations / * /locations / * ` or `projects / *
  /// /locations / * `.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of fleets to return. The service
  /// may return fewer than this value. If unspecified, at most 200 fleets will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListFleets` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListFleets` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFleetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFleetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fleets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFleetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
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
  ProjectsLocationsFleetsResource get fleets =>
      ProjectsLocationsFleetsResource(_requester);
  ProjectsLocationsMembershipsResource get memberships =>
      ProjectsLocationsMembershipsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsScopesResource get scopes =>
      ProjectsLocationsScopesResource(_requester);

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (featureId != null) 'featureId': [featureId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/features';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Feature.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/features';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFeaturesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFleetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFleetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a fleet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Fleet
  /// will be created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    Fleet request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fleets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes a Fleet.
  ///
  /// There must be no memberships remaining in the Fleet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Fleet resource name in the format `projects / *
  /// /locations / * /fleets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/fleets/\[^/\]+$`.
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

  /// Returns the details of a fleet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Fleet resource name in the format `projects / *
  /// /locations / * /fleets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/fleets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Fleet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Fleet> get(
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
    return Fleet.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all fleets within an organization or a project that the caller has
  /// access to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The organization or project to list for Fleets under,
  /// in the format `organizations / * /locations / * ` or `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of fleets to return. The service
  /// may return fewer than this value. If unspecified, at most 200 fleets will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListFleets` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListFleets` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFleetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFleetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fleets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFleetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a fleet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full, unique resource name of this fleet in the
  /// format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each
  /// Google Cloud project can have at most one fleet resource, named "default".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/fleets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to be updated;
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
    Fleet request,
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

class ProjectsLocationsMembershipsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsBindingsResource get bindings =>
      ProjectsLocationsMembershipsBindingsResource(_requester);

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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (membershipId != null) 'membershipId': [membershipId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [force] - Optional. If set to true, any subresource from this Membership
  /// will also be deleted. Otherwise, the request will only work if the
  /// Membership has no subresource.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (imagePullSecretContent != null)
        'imagePullSecretContent': [imagePullSecretContent],
      if (isUpgrade != null) 'isUpgrade': ['${isUpgrade}'],
      if (namespace != null) 'namespace': [namespace],
      if (proxy != null) 'proxy': [proxy],
      if (registry != null) 'registry': [registry],
      if (version != null) 'version': [version],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':generateConnectManifest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenerateConnectManifestResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Membership.fromJson(
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

  /// Lists Memberships in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// Memberships will be listed. Specified in the format `projects / *
  /// /locations / * `. `projects / * /locations/-` list memberships in all the
  /// regions.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/memberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMembershipsBindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMembershipsBindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a MembershipBinding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// MembershipBinding will be created. Specified in the format `projects / *
  /// /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [membershipBindingId] - Required. The ID to use for the MembershipBinding.
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
    MembershipBinding request,
    core.String parent, {
    core.String? membershipBindingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (membershipBindingId != null)
        'membershipBindingId': [membershipBindingId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a MembershipBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The MembershipBinding resource name in the format
  /// `projects / * /locations / * /memberships / * /bindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/bindings/\[^/\]+$`.
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

  /// Returns the details of a MembershipBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The MembershipBinding resource name in the format
  /// `projects / * /locations / * /memberships / * /bindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/bindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MembershipBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MembershipBinding> get(
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
    return MembershipBinding.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists MembershipBindings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Membership for which the
  /// MembershipBindings will be listed. Specified in the format `projects / *
  /// /locations / * /memberships / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists MembershipBindings that match the filter
  /// expression, following the syntax outlined in https://google.aip.dev/160.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListMembershipBindings` which specifies the position in the list from
  /// where to continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipBindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMembershipBindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a MembershipBinding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the membershipbinding itself
  /// `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/memberships/\[^/\]+/bindings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to be updated.
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
    MembershipBinding request,
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsScopesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScopesNamespacesResource get namespaces =>
      ProjectsLocationsScopesNamespacesResource(_requester);
  ProjectsLocationsScopesRbacrolebindingsResource get rbacrolebindings =>
      ProjectsLocationsScopesRbacrolebindingsResource(_requester);

  ProjectsLocationsScopesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Scope
  /// will be created. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [scopeId] - Required. Client chosen ID for the Scope. `scope_id` must be a
  /// ????
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
    Scope request,
    core.String parent, {
    core.String? scopeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (scopeId != null) 'scopeId': [scopeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scopes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Scope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Scope resource name in the format `projects / *
  /// /locations / * /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
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

  /// Returns the details of a Scope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Scope resource name in the format `projects / *
  /// /locations / * /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Scope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Scope> get(
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
    return Scope.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
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

  /// Lists Scopes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Scope
  /// will be listed. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to `ListScopes`
  /// which specifies the position in the list from where to continue listing
  /// the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScopesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScopesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scopes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScopesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Memberships bound to a Scope.
  ///
  /// The response includes relevant Memberships from all regions.
  ///
  /// Request parameters:
  ///
  /// [scopeName] - Required. Name of the Scope, in the format `projects / *
  /// /locations/global/scopes / * `, to which the Memberships are bound.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists Memberships that match the filter expression,
  /// following the syntax outlined in https://google.aip.dev/160. Currently,
  /// filtering can be done only based on Memberships's `name`, `labels`,
  /// `create_time`, `update_time`, and `unique_id`.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned. Pagination is currently not supported;
  /// therefore, setting this field does not have any impact for now.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListBoundMemberships` which specifies the position in the list from where
  /// to continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBoundMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBoundMembershipsResponse> listMemberships(
    core.String scopeName, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$scopeName') + ':listMemberships';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBoundMembershipsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists permitted Scopes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Scope
  /// will be listed. Specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListPermittedScopes` which specifies the position in the list from where
  /// to continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPermittedScopesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPermittedScopesResponse> listPermitted(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/scopes:listPermitted';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPermittedScopesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a scopes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the scope
  /// `projects/{project}/locations/{location}/scopes/{scope}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to be updated.
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
    Scope request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsScopesNamespacesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScopesNamespacesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a fleet namespace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Namespace
  /// will be created. Specified in the format `projects / * /locations / *
  /// /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [scopeNamespaceId] - Required. Client chosen ID for the Namespace.
  /// `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63
  /// characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
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
    Namespace request,
    core.String parent, {
    core.String? scopeNamespaceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (scopeNamespaceId != null) 'scopeNamespaceId': [scopeNamespaceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/namespaces';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a fleet namespace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Namespace resource name in the format `projects / *
  /// /locations / * /scopes / * /namespaces / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/namespaces/\[^/\]+$`.
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

  /// Returns the details of a fleet namespace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Namespace resource name in the format `projects / *
  /// /locations / * /scopes / * /namespaces / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/namespaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Namespace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Namespace> get(
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
    return Namespace.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists fleet namespaces.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Features
  /// will be listed. Specified in the format `projects / * /locations / *
  /// /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to `ListFeatures`
  /// which specifies the position in the list from where to continue listing
  /// the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScopeNamespacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScopeNamespacesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/namespaces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScopeNamespacesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a fleet namespace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the namespace
  /// `projects/{project}/locations/{location}/namespaces/{namespace}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/namespaces/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to be updated.
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
    Namespace request,
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

class ProjectsLocationsScopesRbacrolebindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScopesRbacrolebindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Scope RBACRoleBinding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the
  /// RBACRoleBinding will be created. Specified in the format `projects / *
  /// /locations / * /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [rbacrolebindingId] - Required. Client chosen ID for the RBACRoleBinding.
  /// `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At
  /// most 63 characters in length 2. It must consist of lower case alphanumeric
  /// characters or `-` 3. It must start and end with an alphanumeric character
  /// Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with
  /// a maximum length of 63 characters.
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
    RBACRoleBinding request,
    core.String parent, {
    core.String? rbacrolebindingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (rbacrolebindingId != null) 'rbacrolebindingId': [rbacrolebindingId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rbacrolebindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Scope RBACRoleBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The RBACRoleBinding resource name in the format
  /// `projects / * /locations / * /scopes / * /rbacrolebindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/rbacrolebindings/\[^/\]+$`.
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

  /// Returns the details of a Scope RBACRoleBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The RBACRoleBinding resource name in the format
  /// `projects / * /locations / * /scopes / * /rbacrolebindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/rbacrolebindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RBACRoleBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RBACRoleBinding> get(
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
    return RBACRoleBinding.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Scope RBACRoleBindings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) where the Features
  /// will be listed. Specified in the format `projects / * /locations / *
  /// /scopes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. When requesting a 'page' of resources, `page_size`
  /// specifies number of resources to return. If unspecified or set to 0, all
  /// resources will be returned.
  ///
  /// [pageToken] - Optional. Token returned by previous call to
  /// `ListScopeRBACRoleBindings` which specifies the position in the list from
  /// where to continue listing the resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScopeRBACRoleBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScopeRBACRoleBindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rbacrolebindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScopeRBACRoleBindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Scope RBACRoleBinding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the rbacrolebinding
  /// `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}`
  /// or
  /// `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+/rbacrolebindings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The fields to be updated.
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
    RBACRoleBinding request,
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

/// Spec for App Dev Experience Feature.
typedef AppDevExperienceFeatureSpec = $Empty;

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureState {
  /// Status of subcomponent that detects configured Service Mesh resources.
  Status? networkingInstallSucceeded;

  AppDevExperienceFeatureState({
    this.networkingInstallSucceeded,
  });

  AppDevExperienceFeatureState.fromJson(core.Map json_)
      : this(
          networkingInstallSucceeded:
              json_.containsKey('networkingInstallSucceeded')
                  ? Status.fromJson(json_['networkingInstallSucceeded']
                      as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkingInstallSucceeded != null)
          'networkingInstallSucceeded': networkingInstallSucceeded!,
      };
}

/// ApplianceCluster contains information specific to GDC Edge Appliance
/// Clusters.
class ApplianceCluster {
  /// Self-link of the Google Cloud resource for the Appliance Cluster.
  ///
  /// For example:
  /// //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
  ///
  /// Immutable.
  core.String? resourceLink;

  ApplianceCluster({
    this.resourceLink,
  });

  ApplianceCluster.fromJson(core.Map json_)
      : this(
          resourceLink: json_.containsKey('resourceLink')
              ? json_['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceLink != null) 'resourceLink': resourceLink!,
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
  /// characters, it must use `location` rather than `zone` for GKE clusters. If
  /// set, then Google will allow valid OIDC tokens from this issuer to
  /// authenticate within the workload_identity_pool. OIDC discovery will be
  /// performed on this URI to validate tokens from the issuer. Clearing
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

  set oidcJwksAsBytes(core.List<core.int> bytes_) {
    oidcJwks =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  Authority.fromJson(core.Map json_)
      : this(
          identityProvider: json_.containsKey('identityProvider')
              ? json_['identityProvider'] as core.String
              : null,
          issuer: json_.containsKey('issuer')
              ? json_['issuer'] as core.String
              : null,
          oidcJwks: json_.containsKey('oidcJwks')
              ? json_['oidcJwks'] as core.String
              : null,
          workloadIdentityPool: json_.containsKey('workloadIdentityPool')
              ? json_['workloadIdentityPool'] as core.String
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

/// BinaryAuthorizationConfig defines the fleet level configuration of binary
/// authorization feature.
class BinaryAuthorizationConfig {
  /// Mode of operation for binauthz policy evaluation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVALUATION_MODE_UNSPECIFIED" : Default value
  /// - "DISABLED" : Disable BinaryAuthorization
  /// - "POLICY_BINDINGS" : Use Binary Authorization with the policies specified
  /// in policy_bindings.
  core.String? evaluationMode;

  /// Binauthz policies that apply to this cluster.
  ///
  /// Optional.
  core.List<PolicyBinding>? policyBindings;

  BinaryAuthorizationConfig({
    this.evaluationMode,
    this.policyBindings,
  });

  BinaryAuthorizationConfig.fromJson(core.Map json_)
      : this(
          evaluationMode: json_.containsKey('evaluationMode')
              ? json_['evaluationMode'] as core.String
              : null,
          policyBindings: json_.containsKey('policyBindings')
              ? (json_['policyBindings'] as core.List)
                  .map((value) => PolicyBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationMode != null) 'evaluationMode': evaluationMode!,
        if (policyBindings != null) 'policyBindings': policyBindings!,
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade
/// feature.
class ClusterUpgradeFleetSpec {
  /// Allow users to override some properties of each GKE upgrade.
  core.List<ClusterUpgradeGKEUpgradeOverride>? gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE.
  ///
  /// Required.
  ///
  /// Required.
  ClusterUpgradePostConditions? postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the
  /// upstream fleets.
  ///
  /// See UpgradeStatus.Code for code definitions. The fleet name should be
  /// either fleet project number or id. This is defined as repeated for future
  /// proof reasons. Initial implementation will enforce at most one upstream
  /// fleet.
  core.List<core.String>? upstreamFleets;

  ClusterUpgradeFleetSpec({
    this.gkeUpgradeOverrides,
    this.postConditions,
    this.upstreamFleets,
  });

  ClusterUpgradeFleetSpec.fromJson(core.Map json_)
      : this(
          gkeUpgradeOverrides: json_.containsKey('gkeUpgradeOverrides')
              ? (json_['gkeUpgradeOverrides'] as core.List)
                  .map((value) => ClusterUpgradeGKEUpgradeOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          postConditions: json_.containsKey('postConditions')
              ? ClusterUpgradePostConditions.fromJson(json_['postConditions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          upstreamFleets: json_.containsKey('upstreamFleets')
              ? (json_['upstreamFleets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gkeUpgradeOverrides != null)
          'gkeUpgradeOverrides': gkeUpgradeOverrides!,
        if (postConditions != null) 'postConditions': postConditions!,
        if (upstreamFleets != null) 'upstreamFleets': upstreamFleets!,
      };
}

/// **ClusterUpgrade**: The state for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetState {
  /// This fleets whose upstream_fleets contain the current fleet.
  ///
  /// The fleet name should be either fleet project number or id.
  core.List<core.String>? downstreamFleets;

  /// Feature state for GKE clusters.
  ClusterUpgradeGKEUpgradeFeatureState? gkeState;

  /// A list of memberships ignored by the feature.
  ///
  /// For example, manually upgraded clusters can be ignored if they are newer
  /// than the default versions of its release channel. The membership resource
  /// is in the format: `projects/{p}/locations/{l}/membership/{m}`.
  core.Map<core.String, ClusterUpgradeIgnoredMembership>? ignored;

  ClusterUpgradeFleetState({
    this.downstreamFleets,
    this.gkeState,
    this.ignored,
  });

  ClusterUpgradeFleetState.fromJson(core.Map json_)
      : this(
          downstreamFleets: json_.containsKey('downstreamFleets')
              ? (json_['downstreamFleets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          gkeState: json_.containsKey('gkeState')
              ? ClusterUpgradeGKEUpgradeFeatureState.fromJson(
                  json_['gkeState'] as core.Map<core.String, core.dynamic>)
              : null,
          ignored: json_.containsKey('ignored')
              ? (json_['ignored'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    ClusterUpgradeIgnoredMembership.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downstreamFleets != null) 'downstreamFleets': downstreamFleets!,
        if (gkeState != null) 'gkeState': gkeState!,
        if (ignored != null) 'ignored': ignored!,
      };
}

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgrade {
  /// Name of the upgrade, e.g., "k8s_control_plane".
  ///
  /// It should be a valid upgrade name. It must not exceet 99 characters.
  core.String? name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100".
  ///
  /// It should be a valid version. It must not exceet 99 characters.
  core.String? version;

  ClusterUpgradeGKEUpgrade({
    this.name,
    this.version,
  });

  ClusterUpgradeGKEUpgrade.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// GKEUpgradeFeatureCondition describes the condition of the feature for GKE
/// clusters at a certain point of time.
class ClusterUpgradeGKEUpgradeFeatureCondition {
  /// Reason why the feature is in this status.
  core.String? reason;

  /// Status of the condition, one of True, False, Unknown.
  core.String? status;

  /// Type of the condition, for example, "ready".
  core.String? type;

  /// Last timestamp the condition was updated.
  core.String? updateTime;

  ClusterUpgradeGKEUpgradeFeatureCondition({
    this.reason,
    this.status,
    this.type,
    this.updateTime,
  });

  ClusterUpgradeGKEUpgradeFeatureCondition.fromJson(core.Map json_)
      : this(
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// GKEUpgradeFeatureState contains feature states for GKE clusters in the
/// scope.
class ClusterUpgradeGKEUpgradeFeatureState {
  /// Current conditions of the feature.
  core.List<ClusterUpgradeGKEUpgradeFeatureCondition>? conditions;

  /// Upgrade state.
  ///
  /// It will eventually replace `state`.
  core.List<ClusterUpgradeGKEUpgradeState>? upgradeState;

  ClusterUpgradeGKEUpgradeFeatureState({
    this.conditions,
    this.upgradeState,
  });

  ClusterUpgradeGKEUpgradeFeatureState.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) =>
                      ClusterUpgradeGKEUpgradeFeatureCondition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          upgradeState: json_.containsKey('upgradeState')
              ? (json_['upgradeState'] as core.List)
                  .map((value) => ClusterUpgradeGKEUpgradeState.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (upgradeState != null) 'upgradeState': upgradeState!,
      };
}

/// Properties of a GKE upgrade that can be overridden by the user.
///
/// For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverride {
  /// Post conditions to override for the specified upgrade (name + version).
  ///
  /// Required.
  ///
  /// Required.
  ClusterUpgradePostConditions? postConditions;

  /// Which upgrade to override.
  ///
  /// Required.
  ///
  /// Required.
  ClusterUpgradeGKEUpgrade? upgrade;

  ClusterUpgradeGKEUpgradeOverride({
    this.postConditions,
    this.upgrade,
  });

  ClusterUpgradeGKEUpgradeOverride.fromJson(core.Map json_)
      : this(
          postConditions: json_.containsKey('postConditions')
              ? ClusterUpgradePostConditions.fromJson(json_['postConditions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          upgrade: json_.containsKey('upgrade')
              ? ClusterUpgradeGKEUpgrade.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postConditions != null) 'postConditions': postConditions!,
        if (upgrade != null) 'upgrade': upgrade!,
      };
}

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeState {
  /// Number of GKE clusters in each status code.
  core.Map<core.String, core.String>? stats;

  /// Status of the upgrade.
  ClusterUpgradeUpgradeStatus? status;

  /// Which upgrade to track the state.
  ClusterUpgradeGKEUpgrade? upgrade;

  ClusterUpgradeGKEUpgradeState({
    this.stats,
    this.status,
    this.upgrade,
  });

  ClusterUpgradeGKEUpgradeState.fromJson(core.Map json_)
      : this(
          stats: json_.containsKey('stats')
              ? (json_['stats'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          status: json_.containsKey('status')
              ? ClusterUpgradeUpgradeStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          upgrade: json_.containsKey('upgrade')
              ? ClusterUpgradeGKEUpgrade.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
        if (status != null) 'status': status!,
        if (upgrade != null) 'upgrade': upgrade!,
      };
}

/// IgnoredMembership represents a membership ignored by the feature.
///
/// A membership can be ignored because it was manually upgraded to a newer
/// version than RC default.
class ClusterUpgradeIgnoredMembership {
  /// Time when the membership was first set to ignored.
  core.String? ignoredTime;

  /// Reason why the membership is ignored.
  core.String? reason;

  ClusterUpgradeIgnoredMembership({
    this.ignoredTime,
    this.reason,
  });

  ClusterUpgradeIgnoredMembership.fromJson(core.Map json_)
      : this(
          ignoredTime: json_.containsKey('ignoredTime')
              ? json_['ignoredTime'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoredTime != null) 'ignoredTime': ignoredTime!,
        if (reason != null) 'reason': reason!,
      };
}

/// ScopeGKEUpgradeState is a GKEUpgrade and its state per-membership.
class ClusterUpgradeMembershipGKEUpgradeState {
  /// Status of the upgrade.
  ClusterUpgradeUpgradeStatus? status;

  /// Which upgrade to track the state.
  ClusterUpgradeGKEUpgrade? upgrade;

  ClusterUpgradeMembershipGKEUpgradeState({
    this.status,
    this.upgrade,
  });

  ClusterUpgradeMembershipGKEUpgradeState.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? ClusterUpgradeUpgradeStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          upgrade: json_.containsKey('upgrade')
              ? ClusterUpgradeGKEUpgrade.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (upgrade != null) 'upgrade': upgrade!,
      };
}

/// Per-membership state for this feature.
class ClusterUpgradeMembershipState {
  /// Whether this membership is ignored by the feature.
  ///
  /// For example, manually upgraded clusters can be ignored if they are newer
  /// than the default versions of its release channel.
  ClusterUpgradeIgnoredMembership? ignored;

  /// Actual upgrade state against desired.
  core.List<ClusterUpgradeMembershipGKEUpgradeState>? upgrades;

  ClusterUpgradeMembershipState({
    this.ignored,
    this.upgrades,
  });

  ClusterUpgradeMembershipState.fromJson(core.Map json_)
      : this(
          ignored: json_.containsKey('ignored')
              ? ClusterUpgradeIgnoredMembership.fromJson(
                  json_['ignored'] as core.Map<core.String, core.dynamic>)
              : null,
          upgrades: json_.containsKey('upgrades')
              ? (json_['upgrades'] as core.List)
                  .map((value) =>
                      ClusterUpgradeMembershipGKEUpgradeState.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignored != null) 'ignored': ignored!,
        if (upgrades != null) 'upgrades': upgrades!,
      };
}

/// Post conditional checks after an upgrade has been applied on all eligible
/// clusters.
class ClusterUpgradePostConditions {
  /// Amount of time to "soak" after a rollout has been finished before marking
  /// it COMPLETE.
  ///
  /// Cannot exceed 30 days. Required.
  ///
  /// Required.
  core.String? soaking;

  ClusterUpgradePostConditions({
    this.soaking,
  });

  ClusterUpgradePostConditions.fromJson(core.Map json_)
      : this(
          soaking: json_.containsKey('soaking')
              ? json_['soaking'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (soaking != null) 'soaking': soaking!,
      };
}

/// UpgradeStatus provides status information for each upgrade.
class ClusterUpgradeUpgradeStatus {
  /// Status code of the upgrade.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Required by https://linter.aip.dev/126/unspecified.
  /// - "INELIGIBLE" : The upgrade is ineligible. At the scope level, this means
  /// the upgrade is ineligible for all the clusters in the scope.
  /// - "PENDING" : The upgrade is pending. At the scope level, this means the
  /// upgrade is pending for all the clusters in the scope.
  /// - "IN_PROGRESS" : The upgrade is in progress. At the scope level, this
  /// means the upgrade is in progress for at least one cluster in the scope.
  /// - "SOAKING" : The upgrade has finished and is soaking until the soaking
  /// time is up. At the scope level, this means at least one cluster is in
  /// soaking while the rest are either soaking or complete.
  /// - "FORCED_SOAKING" : A cluster will be forced to enter soaking if an
  /// upgrade doesn't finish within a certain limit, despite it's actual status.
  /// - "COMPLETE" : The upgrade has passed all post conditions (soaking). At
  /// the scope level, this means all eligible clusters are in COMPLETE status.
  core.String? code;

  /// Reason for this status.
  core.String? reason;

  /// Last timestamp the status was updated.
  core.String? updateTime;

  ClusterUpgradeUpgradeStatus({
    this.code,
    this.reason,
    this.updateTime,
  });

  ClusterUpgradeUpgradeStatus.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (reason != null) 'reason': reason!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// CommonFeatureSpec contains Hub-wide configuration information
class CommonFeatureSpec {
  /// Appdevexperience specific spec.
  AppDevExperienceFeatureSpec? appdevexperience;

  /// ClusterUpgrade (fleet-based) feature spec.
  ClusterUpgradeFleetSpec? clusterupgrade;

  /// DataplaneV2 feature spec.
  DataplaneV2FeatureSpec? dataplanev2;

  /// FleetObservability feature spec.
  FleetObservabilityFeatureSpec? fleetobservability;

  /// Multicluster Ingress-specific spec.
  MultiClusterIngressFeatureSpec? multiclusteringress;

  CommonFeatureSpec({
    this.appdevexperience,
    this.clusterupgrade,
    this.dataplanev2,
    this.fleetobservability,
    this.multiclusteringress,
  });

  CommonFeatureSpec.fromJson(core.Map json_)
      : this(
          appdevexperience: json_.containsKey('appdevexperience')
              ? AppDevExperienceFeatureSpec.fromJson(json_['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterupgrade: json_.containsKey('clusterupgrade')
              ? ClusterUpgradeFleetSpec.fromJson(json_['clusterupgrade']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataplanev2: json_.containsKey('dataplanev2')
              ? DataplaneV2FeatureSpec.fromJson(
                  json_['dataplanev2'] as core.Map<core.String, core.dynamic>)
              : null,
          fleetobservability: json_.containsKey('fleetobservability')
              ? FleetObservabilityFeatureSpec.fromJson(
                  json_['fleetobservability']
                      as core.Map<core.String, core.dynamic>)
              : null,
          multiclusteringress: json_.containsKey('multiclusteringress')
              ? MultiClusterIngressFeatureSpec.fromJson(
                  json_['multiclusteringress']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (clusterupgrade != null) 'clusterupgrade': clusterupgrade!,
        if (dataplanev2 != null) 'dataplanev2': dataplanev2!,
        if (fleetobservability != null)
          'fleetobservability': fleetobservability!,
        if (multiclusteringress != null)
          'multiclusteringress': multiclusteringress!,
      };
}

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureState {
  /// Appdevexperience specific state.
  AppDevExperienceFeatureState? appdevexperience;

  /// ClusterUpgrade fleet-level state.
  ClusterUpgradeFleetState? clusterupgrade;

  /// FleetObservability feature state.
  FleetObservabilityFeatureState? fleetobservability;

  /// The "running state" of the Feature in this Hub.
  ///
  /// Output only.
  FeatureState? state;

  CommonFeatureState({
    this.appdevexperience,
    this.clusterupgrade,
    this.fleetobservability,
    this.state,
  });

  CommonFeatureState.fromJson(core.Map json_)
      : this(
          appdevexperience: json_.containsKey('appdevexperience')
              ? AppDevExperienceFeatureState.fromJson(json_['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterupgrade: json_.containsKey('clusterupgrade')
              ? ClusterUpgradeFleetState.fromJson(json_['clusterupgrade']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fleetobservability: json_.containsKey('fleetobservability')
              ? FleetObservabilityFeatureState.fromJson(
                  json_['fleetobservability']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? FeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (clusterupgrade != null) 'clusterupgrade': clusterupgrade!,
        if (fleetobservability != null)
          'fleetobservability': fleetobservability!,
        if (state != null) 'state': state!,
      };
}

/// CommonFleetDefaultMemberConfigSpec contains default configuration
/// information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpec {
  /// Config Management-specific spec.
  ConfigManagementMembershipSpec? configmanagement;

  /// Identity Service-specific spec.
  IdentityServiceMembershipSpec? identityservice;

  /// Anthos Service Mesh-specific spec
  ServiceMeshMembershipSpec? mesh;

  /// Policy Controller spec.
  PolicyControllerMembershipSpec? policycontroller;

  CommonFleetDefaultMemberConfigSpec({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  CommonFleetDefaultMemberConfigSpec.fromJson(core.Map json_)
      : this(
          configmanagement: json_.containsKey('configmanagement')
              ? ConfigManagementMembershipSpec.fromJson(
                  json_['configmanagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          identityservice: json_.containsKey('identityservice')
              ? IdentityServiceMembershipSpec.fromJson(json_['identityservice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mesh: json_.containsKey('mesh')
              ? ServiceMeshMembershipSpec.fromJson(
                  json_['mesh'] as core.Map<core.String, core.dynamic>)
              : null,
          policycontroller: json_.containsKey('policycontroller')
              ? PolicyControllerMembershipSpec.fromJson(
                  json_['policycontroller']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (identityservice != null) 'identityservice': identityservice!,
        if (mesh != null) 'mesh': mesh!,
        if (policycontroller != null) 'policycontroller': policycontroller!,
      };
}

/// Configuration for Config Sync
class ConfigManagementConfigSync {
  /// Set to true to allow the vertical scaling.
  ///
  /// Defaults to false which disallows vertical scaling. This field is
  /// deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowVerticalScale;

  /// Enables the installation of ConfigSync.
  ///
  /// If set to true, ConfigSync resources will be created and the other
  /// ConfigSync fields will be applied if exist. If set to false, all other
  /// ConfigSync fields will be ignored, ConfigSync resources will be deleted.
  /// If omitted, ConfigSync resources will be managed depends on the presence
  /// of the git or oci field.
  core.bool? enabled;

  /// Git repo configuration for the cluster.
  ConfigManagementGitConfig? git;

  /// The Email of the Google Cloud Service Account (GSA) used for exporting
  /// Config Sync metrics to Cloud Monitoring and Cloud Monarch when Workload
  /// Identity is enabled.
  ///
  /// The GSA should have the Monitoring Metric Writer
  /// (roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount
  /// `default` in the namespace `config-management-monitoring` should be bound
  /// to the GSA.
  core.String? metricsGcpServiceAccountEmail;

  /// OCI repo configuration for the cluster
  ConfigManagementOciConfig? oci;

  /// Set to true to enable the Config Sync admission webhook to prevent drifts.
  ///
  /// If set to `false`, disables the Config Sync admission webhook and does not
  /// prevent drifts.
  core.bool? preventDrift;

  /// Specifies whether the Config Sync Repo is in "hierarchical" or
  /// "unstructured" mode.
  core.String? sourceFormat;

  ConfigManagementConfigSync({
    this.allowVerticalScale,
    this.enabled,
    this.git,
    this.metricsGcpServiceAccountEmail,
    this.oci,
    this.preventDrift,
    this.sourceFormat,
  });

  ConfigManagementConfigSync.fromJson(core.Map json_)
      : this(
          allowVerticalScale: json_.containsKey('allowVerticalScale')
              ? json_['allowVerticalScale'] as core.bool
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          git: json_.containsKey('git')
              ? ConfigManagementGitConfig.fromJson(
                  json_['git'] as core.Map<core.String, core.dynamic>)
              : null,
          metricsGcpServiceAccountEmail:
              json_.containsKey('metricsGcpServiceAccountEmail')
                  ? json_['metricsGcpServiceAccountEmail'] as core.String
                  : null,
          oci: json_.containsKey('oci')
              ? ConfigManagementOciConfig.fromJson(
                  json_['oci'] as core.Map<core.String, core.dynamic>)
              : null,
          preventDrift: json_.containsKey('preventDrift')
              ? json_['preventDrift'] as core.bool
              : null,
          sourceFormat: json_.containsKey('sourceFormat')
              ? json_['sourceFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowVerticalScale != null)
          'allowVerticalScale': allowVerticalScale!,
        if (enabled != null) 'enabled': enabled!,
        if (git != null) 'git': git!,
        if (metricsGcpServiceAccountEmail != null)
          'metricsGcpServiceAccountEmail': metricsGcpServiceAccountEmail!,
        if (oci != null) 'oci': oci!,
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
  /// - "PENDING" : Deployment is installing or terminating
  core.String? admissionWebhook;

  /// Deployment state of the git-sync pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gitSync;

  /// Deployment state of the importer pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? importer;

  /// Deployment state of the monitor pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? monitor;

  /// Deployment state of reconciler-manager pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? reconcilerManager;

  /// Deployment state of root-reconciler
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? rootReconciler;

  /// Deployment state of the syncer pod
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
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

  ConfigManagementConfigSyncDeploymentState.fromJson(core.Map json_)
      : this(
          admissionWebhook: json_.containsKey('admissionWebhook')
              ? json_['admissionWebhook'] as core.String
              : null,
          gitSync: json_.containsKey('gitSync')
              ? json_['gitSync'] as core.String
              : null,
          importer: json_.containsKey('importer')
              ? json_['importer'] as core.String
              : null,
          monitor: json_.containsKey('monitor')
              ? json_['monitor'] as core.String
              : null,
          reconcilerManager: json_.containsKey('reconcilerManager')
              ? json_['reconcilerManager'] as core.String
              : null,
          rootReconciler: json_.containsKey('rootReconciler')
              ? json_['rootReconciler'] as core.String
              : null,
          syncer: json_.containsKey('syncer')
              ? json_['syncer'] as core.String
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

/// Errors pertaining to the installation of Config Sync
typedef ConfigManagementConfigSyncError = $Error;

/// State information for ConfigSync
class ConfigManagementConfigSyncState {
  /// Information about the deployment of ConfigSync, including the version of
  /// the various Pods deployed
  ConfigManagementConfigSyncDeploymentState? deploymentState;

  /// Errors pertaining to the installation of Config Sync.
  core.List<ConfigManagementConfigSyncError>? errors;

  /// The state of the Reposync CRD
  /// Possible string values are:
  /// - "CRD_STATE_UNSPECIFIED" : CRD's state cannot be determined
  /// - "NOT_INSTALLED" : CRD is not installed
  /// - "INSTALLED" : CRD is installed
  /// - "TERMINATING" : CRD is terminating (i.e., it has been deleted and is
  /// cleaning up)
  /// - "INSTALLING" : CRD is installing
  core.String? reposyncCrd;

  /// The state of the RootSync CRD
  /// Possible string values are:
  /// - "CRD_STATE_UNSPECIFIED" : CRD's state cannot be determined
  /// - "NOT_INSTALLED" : CRD is not installed
  /// - "INSTALLED" : CRD is installed
  /// - "TERMINATING" : CRD is terminating (i.e., it has been deleted and is
  /// cleaning up)
  /// - "INSTALLING" : CRD is installing
  core.String? rootsyncCrd;

  /// The state of CS This field summarizes the other fields in this message.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : CS's state cannot be determined.
  /// - "CONFIG_SYNC_NOT_INSTALLED" : CS is not installed.
  /// - "CONFIG_SYNC_INSTALLED" : The expected CS version is installed
  /// successfully.
  /// - "CONFIG_SYNC_ERROR" : CS encounters errors.
  /// - "CONFIG_SYNC_PENDING" : CS is installing or terminating.
  core.String? state;

  /// The state of ConfigSync's process to sync configs to a cluster
  ConfigManagementSyncState? syncState;

  /// The version of ConfigSync deployed
  ConfigManagementConfigSyncVersion? version;

  ConfigManagementConfigSyncState({
    this.deploymentState,
    this.errors,
    this.reposyncCrd,
    this.rootsyncCrd,
    this.state,
    this.syncState,
    this.version,
  });

  ConfigManagementConfigSyncState.fromJson(core.Map json_)
      : this(
          deploymentState: json_.containsKey('deploymentState')
              ? ConfigManagementConfigSyncDeploymentState.fromJson(
                  json_['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ConfigManagementConfigSyncError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reposyncCrd: json_.containsKey('reposyncCrd')
              ? json_['reposyncCrd'] as core.String
              : null,
          rootsyncCrd: json_.containsKey('rootsyncCrd')
              ? json_['rootsyncCrd'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          syncState: json_.containsKey('syncState')
              ? ConfigManagementSyncState.fromJson(
                  json_['syncState'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementConfigSyncVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (errors != null) 'errors': errors!,
        if (reposyncCrd != null) 'reposyncCrd': reposyncCrd!,
        if (rootsyncCrd != null) 'rootsyncCrd': rootsyncCrd!,
        if (state != null) 'state': state!,
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

  ConfigManagementConfigSyncVersion.fromJson(core.Map json_)
      : this(
          admissionWebhook: json_.containsKey('admissionWebhook')
              ? json_['admissionWebhook'] as core.String
              : null,
          gitSync: json_.containsKey('gitSync')
              ? json_['gitSync'] as core.String
              : null,
          importer: json_.containsKey('importer')
              ? json_['importer'] as core.String
              : null,
          monitor: json_.containsKey('monitor')
              ? json_['monitor'] as core.String
              : null,
          reconcilerManager: json_.containsKey('reconcilerManager')
              ? json_['reconcilerManager'] as core.String
              : null,
          rootReconciler: json_.containsKey('rootReconciler')
              ? json_['rootReconciler'] as core.String
              : null,
          syncer: json_.containsKey('syncer')
              ? json_['syncer'] as core.String
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

  ConfigManagementErrorResource.fromJson(core.Map json_)
      : this(
          resourceGvk: json_.containsKey('resourceGvk')
              ? ConfigManagementGroupVersionKind.fromJson(
                  json_['resourceGvk'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          resourceNamespace: json_.containsKey('resourceNamespace')
              ? json_['resourceNamespace'] as core.String
              : null,
          sourcePath: json_.containsKey('sourcePath')
              ? json_['sourcePath'] as core.String
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
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperAudit;

  /// Status of gatekeeper-controller-manager pod.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperControllerManagerState;

  /// Status of the pod serving the mutation webhook.
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? gatekeeperMutation;

  ConfigManagementGatekeeperDeploymentState({
    this.gatekeeperAudit,
    this.gatekeeperControllerManagerState,
    this.gatekeeperMutation,
  });

  ConfigManagementGatekeeperDeploymentState.fromJson(core.Map json_)
      : this(
          gatekeeperAudit: json_.containsKey('gatekeeperAudit')
              ? json_['gatekeeperAudit'] as core.String
              : null,
          gatekeeperControllerManagerState:
              json_.containsKey('gatekeeperControllerManagerState')
                  ? json_['gatekeeperControllerManagerState'] as core.String
                  : null,
          gatekeeperMutation: json_.containsKey('gatekeeperMutation')
              ? json_['gatekeeperMutation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatekeeperAudit != null) 'gatekeeperAudit': gatekeeperAudit!,
        if (gatekeeperControllerManagerState != null)
          'gatekeeperControllerManagerState': gatekeeperControllerManagerState!,
        if (gatekeeperMutation != null)
          'gatekeeperMutation': gatekeeperMutation!,
      };
}

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfig {
  /// The Google Cloud Service Account Email used for auth when secret_type is
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

  ConfigManagementGitConfig.fromJson(core.Map json_)
      : this(
          gcpServiceAccountEmail: json_.containsKey('gcpServiceAccountEmail')
              ? json_['gcpServiceAccountEmail'] as core.String
              : null,
          httpsProxy: json_.containsKey('httpsProxy')
              ? json_['httpsProxy'] as core.String
              : null,
          policyDir: json_.containsKey('policyDir')
              ? json_['policyDir'] as core.String
              : null,
          secretType: json_.containsKey('secretType')
              ? json_['secretType'] as core.String
              : null,
          syncBranch: json_.containsKey('syncBranch')
              ? json_['syncBranch'] as core.String
              : null,
          syncRepo: json_.containsKey('syncRepo')
              ? json_['syncRepo'] as core.String
              : null,
          syncRev: json_.containsKey('syncRev')
              ? json_['syncRev'] as core.String
              : null,
          syncWaitSecs: json_.containsKey('syncWaitSecs')
              ? json_['syncWaitSecs'] as core.String
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

  ConfigManagementGroupVersionKind.fromJson(core.Map json_)
      : this(
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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

  ConfigManagementHierarchyControllerConfig.fromJson(core.Map json_)
      : this(
          enableHierarchicalResourceQuota:
              json_.containsKey('enableHierarchicalResourceQuota')
                  ? json_['enableHierarchicalResourceQuota'] as core.bool
                  : null,
          enablePodTreeLabels: json_.containsKey('enablePodTreeLabels')
              ? json_['enablePodTreeLabels'] as core.bool
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
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
  /// - "PENDING" : Deployment is installing or terminating
  core.String? extension;

  /// The deployment state for open source HNC (e.g. v0.7.0-hc.0)
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Deployment's state cannot be determined
  /// - "NOT_INSTALLED" : Deployment is not installed
  /// - "INSTALLED" : Deployment is installed
  /// - "ERROR" : Deployment was attempted to be installed, but has errors
  /// - "PENDING" : Deployment is installing or terminating
  core.String? hnc;

  ConfigManagementHierarchyControllerDeploymentState({
    this.extension,
    this.hnc,
  });

  ConfigManagementHierarchyControllerDeploymentState.fromJson(core.Map json_)
      : this(
          extension: json_.containsKey('extension')
              ? json_['extension'] as core.String
              : null,
          hnc: json_.containsKey('hnc') ? json_['hnc'] as core.String : null,
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

  ConfigManagementHierarchyControllerState.fromJson(core.Map json_)
      : this(
          state: json_.containsKey('state')
              ? ConfigManagementHierarchyControllerDeploymentState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementHierarchyControllerVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
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

  ConfigManagementHierarchyControllerVersion.fromJson(core.Map json_)
      : this(
          extension: json_.containsKey('extension')
              ? json_['extension'] as core.String
              : null,
          hnc: json_.containsKey('hnc') ? json_['hnc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!,
        if (hnc != null) 'hnc': hnc!,
      };
}

/// Errors pertaining to the installation of ACM
typedef ConfigManagementInstallError = $Error;

/// **Anthos Config Management**: Configuration for a single cluster.
///
/// Intended to parallel the ConfigManagement CR.
class ConfigManagementMembershipSpec {
  /// The user-specified cluster name used by Config Sync cluster-name-selector
  /// annotation or ClusterSelector, for applying configs to only a subset of
  /// clusters.
  ///
  /// Omit this field if the cluster's fleet membership name is used by Config
  /// Sync cluster-name-selector annotation or ClusterSelector. Set this field
  /// if a name different from the cluster's fleet membership name is used by
  /// Config Sync cluster-name-selector annotation or ClusterSelector.
  core.String? cluster;

  /// Config Sync configuration for the cluster.
  ConfigManagementConfigSync? configSync;

  /// Hierarchy Controller configuration for the cluster.
  ConfigManagementHierarchyControllerConfig? hierarchyController;

  /// Enables automatic Feature management.
  /// Possible string values are:
  /// - "MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "MANAGEMENT_AUTOMATIC" : Google will manage the Feature for the cluster.
  /// - "MANAGEMENT_MANUAL" : User will manually manage the Feature for the
  /// cluster.
  core.String? management;

  /// Policy Controller configuration for the cluster.
  ConfigManagementPolicyController? policyController;

  /// Version of ACM installed.
  core.String? version;

  ConfigManagementMembershipSpec({
    this.cluster,
    this.configSync,
    this.hierarchyController,
    this.management,
    this.policyController,
    this.version,
  });

  ConfigManagementMembershipSpec.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          configSync: json_.containsKey('configSync')
              ? ConfigManagementConfigSync.fromJson(
                  json_['configSync'] as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyController: json_.containsKey('hierarchyController')
              ? ConfigManagementHierarchyControllerConfig.fromJson(
                  json_['hierarchyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          management: json_.containsKey('management')
              ? json_['management'] as core.String
              : null,
          policyController: json_.containsKey('policyController')
              ? ConfigManagementPolicyController.fromJson(
                  json_['policyController']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (configSync != null) 'configSync': configSync!,
        if (hierarchyController != null)
          'hierarchyController': hierarchyController!,
        if (management != null) 'management': management!,
        if (policyController != null) 'policyController': policyController!,
        if (version != null) 'version': version!,
      };
}

/// **Anthos Config Management**: State for a single cluster.
class ConfigManagementMembershipState {
  /// This field is set to the `cluster_name` field of the Membership Spec if it
  /// is not empty.
  ///
  /// Otherwise, it is set to the cluster's fleet membership name.
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

  ConfigManagementMembershipState.fromJson(core.Map json_)
      : this(
          clusterName: json_.containsKey('clusterName')
              ? json_['clusterName'] as core.String
              : null,
          configSyncState: json_.containsKey('configSyncState')
              ? ConfigManagementConfigSyncState.fromJson(
                  json_['configSyncState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hierarchyControllerState:
              json_.containsKey('hierarchyControllerState')
                  ? ConfigManagementHierarchyControllerState.fromJson(
                      json_['hierarchyControllerState']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          membershipSpec: json_.containsKey('membershipSpec')
              ? ConfigManagementMembershipSpec.fromJson(json_['membershipSpec']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatorState: json_.containsKey('operatorState')
              ? ConfigManagementOperatorState.fromJson(
                  json_['operatorState'] as core.Map<core.String, core.dynamic>)
              : null,
          policyControllerState: json_.containsKey('policyControllerState')
              ? ConfigManagementPolicyControllerState.fromJson(
                  json_['policyControllerState']
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

/// OCI repo configuration for a single cluster
class ConfigManagementOciConfig {
  /// The Google Cloud Service Account Email used for auth when secret_type is
  /// gcpServiceAccount.
  core.String? gcpServiceAccountEmail;

  /// The absolute path of the directory that contains the local resources.
  ///
  /// Default: the root directory of the image.
  core.String? policyDir;

  /// Type of secret configured for access to the Git repo.
  core.String? secretType;

  /// The OCI image repository URL for the package to sync from.
  ///
  /// e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  core.String? syncRepo;

  /// Period in seconds between consecutive syncs.
  ///
  /// Default: 15.
  core.String? syncWaitSecs;

  ConfigManagementOciConfig({
    this.gcpServiceAccountEmail,
    this.policyDir,
    this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
  });

  ConfigManagementOciConfig.fromJson(core.Map json_)
      : this(
          gcpServiceAccountEmail: json_.containsKey('gcpServiceAccountEmail')
              ? json_['gcpServiceAccountEmail'] as core.String
              : null,
          policyDir: json_.containsKey('policyDir')
              ? json_['policyDir'] as core.String
              : null,
          secretType: json_.containsKey('secretType')
              ? json_['secretType'] as core.String
              : null,
          syncRepo: json_.containsKey('syncRepo')
              ? json_['syncRepo'] as core.String
              : null,
          syncWaitSecs: json_.containsKey('syncWaitSecs')
              ? json_['syncWaitSecs'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpServiceAccountEmail != null)
          'gcpServiceAccountEmail': gcpServiceAccountEmail!,
        if (policyDir != null) 'policyDir': policyDir!,
        if (secretType != null) 'secretType': secretType!,
        if (syncRepo != null) 'syncRepo': syncRepo!,
        if (syncWaitSecs != null) 'syncWaitSecs': syncWaitSecs!,
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
  /// - "PENDING" : Deployment is installing or terminating
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

  ConfigManagementOperatorState.fromJson(core.Map json_)
      : this(
          deploymentState: json_.containsKey('deploymentState')
              ? json_['deploymentState'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ConfigManagementInstallError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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

  /// Monitoring specifies the configuration of monitoring.
  ConfigManagementPolicyControllerMonitoring? monitoring;

  /// Enable or disable mutation in policy controller.
  ///
  /// If true, mutation CRDs, webhook and controller deployment will be deployed
  /// to the cluster.
  core.bool? mutationEnabled;

  /// Enables the ability to use Constraint Templates that reference to objects
  /// other than the object currently being evaluated.
  core.bool? referentialRulesEnabled;

  /// Installs the default template library along with Policy Controller.
  core.bool? templateLibraryInstalled;

  /// Last time this membership spec was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConfigManagementPolicyController({
    this.auditIntervalSeconds,
    this.enabled,
    this.exemptableNamespaces,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.referentialRulesEnabled,
    this.templateLibraryInstalled,
    this.updateTime,
  });

  ConfigManagementPolicyController.fromJson(core.Map json_)
      : this(
          auditIntervalSeconds: json_.containsKey('auditIntervalSeconds')
              ? json_['auditIntervalSeconds'] as core.String
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          exemptableNamespaces: json_.containsKey('exemptableNamespaces')
              ? (json_['exemptableNamespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logDeniesEnabled: json_.containsKey('logDeniesEnabled')
              ? json_['logDeniesEnabled'] as core.bool
              : null,
          monitoring: json_.containsKey('monitoring')
              ? ConfigManagementPolicyControllerMonitoring.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          mutationEnabled: json_.containsKey('mutationEnabled')
              ? json_['mutationEnabled'] as core.bool
              : null,
          referentialRulesEnabled: json_.containsKey('referentialRulesEnabled')
              ? json_['referentialRulesEnabled'] as core.bool
              : null,
          templateLibraryInstalled:
              json_.containsKey('templateLibraryInstalled')
                  ? json_['templateLibraryInstalled'] as core.bool
                  : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditIntervalSeconds != null)
          'auditIntervalSeconds': auditIntervalSeconds!,
        if (enabled != null) 'enabled': enabled!,
        if (exemptableNamespaces != null)
          'exemptableNamespaces': exemptableNamespaces!,
        if (logDeniesEnabled != null) 'logDeniesEnabled': logDeniesEnabled!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (mutationEnabled != null) 'mutationEnabled': mutationEnabled!,
        if (referentialRulesEnabled != null)
          'referentialRulesEnabled': referentialRulesEnabled!,
        if (templateLibraryInstalled != null)
          'templateLibraryInstalled': templateLibraryInstalled!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// State for the migration of PolicyController from ACM -\> PoCo Hub.
class ConfigManagementPolicyControllerMigration {
  /// Last time this membership spec was copied to PoCo feature.
  core.String? copyTime;

  /// Stage of the migration.
  /// Possible string values are:
  /// - "STAGE_UNSPECIFIED" : Unknown state of migration.
  /// - "ACM_MANAGED" : ACM Hub/Operator manages policycontroller. No migration
  /// yet completed.
  /// - "POCO_MANAGED" : All migrations steps complete; Poco Hub now manages
  /// policycontroller.
  core.String? stage;

  ConfigManagementPolicyControllerMigration({
    this.copyTime,
    this.stage,
  });

  ConfigManagementPolicyControllerMigration.fromJson(core.Map json_)
      : this(
          copyTime: json_.containsKey('copyTime')
              ? json_['copyTime'] as core.String
              : null,
          stage:
              json_.containsKey('stage') ? json_['stage'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyTime != null) 'copyTime': copyTime!,
        if (stage != null) 'stage': stage!,
      };
}

/// PolicyControllerMonitoring specifies the backends Policy Controller should
/// export metrics to.
///
/// For example, to specify metrics should be exported to Cloud Monitoring and
/// Prometheus, specify backends: \["cloudmonitoring", "prometheus"\]
typedef ConfigManagementPolicyControllerMonitoring = $Shared09;

/// State for PolicyControllerState.
class ConfigManagementPolicyControllerState {
  /// The state about the policy controller installation.
  ConfigManagementGatekeeperDeploymentState? deploymentState;

  /// Record state of ACM -\> PoCo Hub migration for this feature.
  ConfigManagementPolicyControllerMigration? migration;

  /// The version of Gatekeeper Policy Controller deployed.
  ConfigManagementPolicyControllerVersion? version;

  ConfigManagementPolicyControllerState({
    this.deploymentState,
    this.migration,
    this.version,
  });

  ConfigManagementPolicyControllerState.fromJson(core.Map json_)
      : this(
          deploymentState: json_.containsKey('deploymentState')
              ? ConfigManagementGatekeeperDeploymentState.fromJson(
                  json_['deploymentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          migration: json_.containsKey('migration')
              ? ConfigManagementPolicyControllerMigration.fromJson(
                  json_['migration'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? ConfigManagementPolicyControllerVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deploymentState != null) 'deploymentState': deploymentState!,
        if (migration != null) 'migration': migration!,
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

  ConfigManagementPolicyControllerVersion.fromJson(core.Map json_)
      : this(
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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

  ConfigManagementSyncError.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          errorResources: json_.containsKey('errorResources')
              ? (json_['errorResources'] as core.List)
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
  /// - "SYNC_CODE_UNSPECIFIED" : Config Sync cannot determine a sync code
  /// - "SYNCED" : Config Sync successfully synced the git Repo with the cluster
  /// - "PENDING" : Config Sync is in the progress of syncing a new change
  /// - "ERROR" : Indicates an error configuring Config Sync, and user action is
  /// required
  /// - "NOT_CONFIGURED" : Config Sync has been installed but not configured
  /// - "NOT_INSTALLED" : Config Sync has not been installed
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  ConfigManagementSyncState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ConfigManagementSyncError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          importToken: json_.containsKey('importToken')
              ? json_['importToken'] as core.String
              : null,
          lastSync: json_.containsKey('lastSync')
              ? json_['lastSync'] as core.String
              : null,
          lastSyncTime: json_.containsKey('lastSyncTime')
              ? json_['lastSyncTime'] as core.String
              : null,
          sourceToken: json_.containsKey('sourceToken')
              ? json_['sourceToken'] as core.String
              : null,
          syncToken: json_.containsKey('syncToken')
              ? json_['syncToken'] as core.String
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

  ConnectAgentResource.fromJson(core.Map json_)
      : this(
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
              : null,
          type: json_.containsKey('type')
              ? TypeMeta.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifest != null) 'manifest': manifest!,
        if (type != null) 'type': type!,
      };
}

/// **Dataplane V2**: Spec
class DataplaneV2FeatureSpec {
  /// Enable dataplane-v2 based encryption for multiple clusters.
  core.bool? enableEncryption;

  DataplaneV2FeatureSpec({
    this.enableEncryption,
  });

  DataplaneV2FeatureSpec.fromJson(core.Map json_)
      : this(
          enableEncryption: json_.containsKey('enableEncryption')
              ? json_['enableEncryption'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableEncryption != null) 'enableEncryption': enableEncryption!,
      };
}

/// DefaultClusterConfig describes the default cluster configurations to be
/// applied to all clusters born-in-fleet.
class DefaultClusterConfig {
  /// Enable/Disable binary authorization features for the cluster.
  ///
  /// Optional.
  BinaryAuthorizationConfig? binaryAuthorizationConfig;

  /// Enable/Disable Security Posture features for the cluster.
  SecurityPostureConfig? securityPostureConfig;

  DefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  DefaultClusterConfig.fromJson(core.Map json_)
      : this(
          binaryAuthorizationConfig:
              json_.containsKey('binaryAuthorizationConfig')
                  ? BinaryAuthorizationConfig.fromJson(
                      json_['binaryAuthorizationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          securityPostureConfig: json_.containsKey('securityPostureConfig')
              ? SecurityPostureConfig.fromJson(json_['securityPostureConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binaryAuthorizationConfig != null)
          'binaryAuthorizationConfig': binaryAuthorizationConfig!,
        if (securityPostureConfig != null)
          'securityPostureConfig': securityPostureConfig!,
      };
}

/// EdgeCluster contains information specific to Google Edge Clusters.
class EdgeCluster {
  /// Self-link of the Google Cloud resource for the Edge Cluster.
  ///
  /// For example:
  /// //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  EdgeCluster({
    this.resourceLink,
  });

  EdgeCluster.fromJson(core.Map json_)
      : this(
          resourceLink: json_.containsKey('resourceLink')
              ? json_['resourceLink'] as core.String
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

  /// Feature configuration applicable to all memberships of the fleet.
  ///
  /// Optional.
  CommonFleetDefaultMemberConfigSpec? fleetDefaultMemberConfig;

  /// Labels for this Feature.
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

  /// Scope-specific configuration for this Feature.
  ///
  /// If this Feature does not support any per-Scope configuration, this field
  /// may be unused. The keys indicate which Scope the configuration is for, in
  /// the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the
  /// project, {s} is a valid Scope in this project. {p} WILL match the
  /// Feature's project. {p} will always be returned as the project number, but
  /// the project ID is also accepted during input. If the same Scope is
  /// specified in the map twice (using the project ID form, and the project
  /// number form), exactly ONE of the entries will be saved, with no guarantees
  /// as to which. For this reason, it is recommended the same format be used
  /// for all entries when mutating a Feature.
  ///
  /// Optional.
  core.Map<core.String, ScopeFeatureSpec>? scopeSpecs;

  /// Scope-specific Feature status.
  ///
  /// If this Feature does report any per-Scope status, this field may be
  /// unused. The keys indicate which Scope the state is for, in the form:
  /// `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s}
  /// is a valid Scope in this project. {p} WILL match the Feature's project.
  ///
  /// Output only.
  core.Map<core.String, ScopeFeatureState>? scopeStates;

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
    this.fleetDefaultMemberConfig,
    this.labels,
    this.membershipSpecs,
    this.membershipStates,
    this.name,
    this.resourceState,
    this.scopeSpecs,
    this.scopeStates,
    this.spec,
    this.state,
    this.updateTime,
  });

  Feature.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          fleetDefaultMemberConfig:
              json_.containsKey('fleetDefaultMemberConfig')
                  ? CommonFleetDefaultMemberConfigSpec.fromJson(
                      json_['fleetDefaultMemberConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          membershipSpecs: json_.containsKey('membershipSpecs')
              ? (json_['membershipSpecs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    MembershipFeatureSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          membershipStates: json_.containsKey('membershipStates')
              ? (json_['membershipStates']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    MembershipFeatureState.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceState: json_.containsKey('resourceState')
              ? FeatureResourceState.fromJson(
                  json_['resourceState'] as core.Map<core.String, core.dynamic>)
              : null,
          scopeSpecs: json_.containsKey('scopeSpecs')
              ? (json_['scopeSpecs'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ScopeFeatureSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          scopeStates: json_.containsKey('scopeStates')
              ? (json_['scopeStates'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ScopeFeatureState.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          spec: json_.containsKey('spec')
              ? CommonFeatureSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? CommonFeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (fleetDefaultMemberConfig != null)
          'fleetDefaultMemberConfig': fleetDefaultMemberConfig!,
        if (labels != null) 'labels': labels!,
        if (membershipSpecs != null) 'membershipSpecs': membershipSpecs!,
        if (membershipStates != null) 'membershipStates': membershipStates!,
        if (name != null) 'name': name!,
        if (resourceState != null) 'resourceState': resourceState!,
        if (scopeSpecs != null) 'scopeSpecs': scopeSpecs!,
        if (scopeStates != null) 'scopeStates': scopeStates!,
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

  FeatureResourceState.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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

  FeatureState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Fleet contains the Fleet-wide metadata and configuration.
class Fleet {
  /// When the Fleet was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The default cluster configurations to apply across the fleet.
  ///
  /// Optional.
  DefaultClusterConfig? defaultClusterConfig;

  /// When the Fleet was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A user-assigned display name of the Fleet.
  ///
  /// When present, it must be between 4 to 30 characters. Allowed characters
  /// are: lowercase and uppercase letters, numbers, hyphen, single-quote,
  /// double-quote, space, and exclamation point. Example: `Production Fleet`
  ///
  /// Optional.
  core.String? displayName;

  /// Labels for this Fleet.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The full, unique resource name of this fleet in the format of
  /// `projects/{project}/locations/{location}/fleets/{fleet}`.
  ///
  /// Each Google Cloud project can have at most one fleet resource, named
  /// "default".
  ///
  /// Output only.
  core.String? name;

  /// State of the namespace resource.
  ///
  /// Output only.
  FleetLifecycleState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all Fleet resources. If a Fleet resource is deleted
  /// and another resource with the same name is created, it gets a different
  /// uid.
  ///
  /// Output only.
  core.String? uid;

  /// When the Fleet was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Fleet({
    this.createTime,
    this.defaultClusterConfig,
    this.deleteTime,
    this.displayName,
    this.labels,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  Fleet.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          defaultClusterConfig: json_.containsKey('defaultClusterConfig')
              ? DefaultClusterConfig.fromJson(json_['defaultClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state: json_.containsKey('state')
              ? FleetLifecycleState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (defaultClusterConfig != null)
          'defaultClusterConfig': defaultClusterConfig!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleState {
  /// The current state of the Fleet resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The fleet is being created.
  /// - "READY" : The fleet active.
  /// - "DELETING" : The fleet is being deleted.
  /// - "UPDATING" : The fleet is being updated.
  core.String? code;

  FleetLifecycleState({
    this.code,
  });

  FleetLifecycleState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// All error details of the fleet observability feature.
class FleetObservabilityFeatureError {
  /// The code of the error.
  core.String? code;

  /// A human-readable description of the current status.
  core.String? description;

  FleetObservabilityFeatureError({
    this.code,
    this.description,
  });

  FleetObservabilityFeatureError.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
      };
}

/// **Fleet Observability**: The Hub-wide input for the FleetObservability
/// feature.
class FleetObservabilityFeatureSpec {
  /// Specified if fleet logging feature is enabled for the entire fleet.
  ///
  /// If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityLoggingConfig? loggingConfig;

  FleetObservabilityFeatureSpec({
    this.loggingConfig,
  });

  FleetObservabilityFeatureSpec.fromJson(core.Map json_)
      : this(
          loggingConfig: json_.containsKey('loggingConfig')
              ? FleetObservabilityLoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
      };
}

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature.
///
/// state.
class FleetObservabilityFeatureState {
  /// The feature state of default logging.
  FleetObservabilityFleetObservabilityLoggingState? logging;

  /// The feature state of fleet monitoring.
  FleetObservabilityFleetObservabilityMonitoringState? monitoring;

  FleetObservabilityFeatureState({
    this.logging,
    this.monitoring,
  });

  FleetObservabilityFeatureState.fromJson(core.Map json_)
      : this(
          logging: json_.containsKey('logging')
              ? FleetObservabilityFleetObservabilityLoggingState.fromJson(
                  json_['logging'] as core.Map<core.String, core.dynamic>)
              : null,
          monitoring: json_.containsKey('monitoring')
              ? FleetObservabilityFleetObservabilityMonitoringState.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logging != null) 'logging': logging!,
        if (monitoring != null) 'monitoring': monitoring!,
      };
}

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureState {
  /// The high-level, machine-readable status of this Feature.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown or not set.
  /// - "OK" : The Feature is operating normally.
  /// - "ERROR" : The Feature is encountering errors in the reconciliation. The
  /// Feature may need intervention to return to normal operation. See the
  /// description and any associated Feature-specific details for more
  /// information.
  core.String? code;

  /// Errors after reconciling the monitoring and logging feature if the code is
  /// not OK.
  core.List<FleetObservabilityFeatureError>? errors;

  FleetObservabilityFleetObservabilityBaseFeatureState({
    this.code,
    this.errors,
  });

  FleetObservabilityFleetObservabilityBaseFeatureState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => FleetObservabilityFeatureError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errors != null) 'errors': errors!,
      };
}

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingState {
  /// The base feature state of fleet default log.
  FleetObservabilityFleetObservabilityBaseFeatureState? defaultLog;

  /// The base feature state of fleet scope log.
  FleetObservabilityFleetObservabilityBaseFeatureState? scopeLog;

  FleetObservabilityFleetObservabilityLoggingState({
    this.defaultLog,
    this.scopeLog,
  });

  FleetObservabilityFleetObservabilityLoggingState.fromJson(core.Map json_)
      : this(
          defaultLog: json_.containsKey('defaultLog')
              ? FleetObservabilityFleetObservabilityBaseFeatureState.fromJson(
                  json_['defaultLog'] as core.Map<core.String, core.dynamic>)
              : null,
          scopeLog: json_.containsKey('scopeLog')
              ? FleetObservabilityFleetObservabilityBaseFeatureState.fromJson(
                  json_['scopeLog'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLog != null) 'defaultLog': defaultLog!,
        if (scopeLog != null) 'scopeLog': scopeLog!,
      };
}

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringState {
  /// The base feature state of fleet monitoring feature.
  FleetObservabilityFleetObservabilityBaseFeatureState? state;

  FleetObservabilityFleetObservabilityMonitoringState({
    this.state,
  });

  FleetObservabilityFleetObservabilityMonitoringState.fromJson(core.Map json_)
      : this(
          state: json_.containsKey('state')
              ? FleetObservabilityFleetObservabilityBaseFeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in
  /// other configs.
  FleetObservabilityRoutingConfig? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  FleetObservabilityRoutingConfig? fleetScopeLogsConfig;

  FleetObservabilityLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  FleetObservabilityLoggingConfig.fromJson(core.Map json_)
      : this(
          defaultConfig: json_.containsKey('defaultConfig')
              ? FleetObservabilityRoutingConfig.fromJson(
                  json_['defaultConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          fleetScopeLogsConfig: json_.containsKey('fleetScopeLogsConfig')
              ? FleetObservabilityRoutingConfig.fromJson(
                  json_['fleetScopeLogsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultConfig != null) 'defaultConfig': defaultConfig!,
        if (fleetScopeLogsConfig != null)
          'fleetScopeLogsConfig': fleetScopeLogsConfig!,
      };
}

/// **FleetObservability**: The membership-specific input for FleetObservability
/// feature.
typedef FleetObservabilityMembershipSpec = $Empty;

/// **FleetObservability**: Membership-specific Feature state for
/// fleetobservability.
typedef FleetObservabilityMembershipState = $Empty;

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfig {
  /// mode configures the logs routing mode.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : If UNSPECIFIED, fleet logging feature is disabled.
  /// - "COPY" : logs will be copied to the destination project.
  /// - "MOVE" : logs will be moved to the destination project.
  core.String? mode;

  FleetObservabilityRoutingConfig({
    this.mode,
  });

  FleetObservabilityRoutingConfig.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
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

  GenerateConnectManifestResponse.fromJson(core.Map json_)
      : this(
          manifest: json_.containsKey('manifest')
              ? (json_['manifest'] as core.List)
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

  /// Self-link of the Google Cloud resource for the GKE cluster.
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

  GkeCluster.fromJson(core.Map json_)
      : this(
          clusterMissing: json_.containsKey('clusterMissing')
              ? json_['clusterMissing'] as core.bool
              : null,
          resourceLink: json_.containsKey('resourceLink')
              ? json_['resourceLink'] as core.String
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

/// Configuration of an auth method for a member/cluster.
///
/// Only one authentication method (e.g., OIDC and LDAP) can be set per
/// AuthMethod.
class IdentityServiceAuthMethod {
  /// AzureAD specific Configuration.
  IdentityServiceAzureADConfig? azureadConfig;

  /// GoogleConfig specific configuration.
  IdentityServiceGoogleConfig? googleConfig;

  /// LDAP specific configuration.
  IdentityServiceLdapConfig? ldapConfig;

  /// Identifier for auth config.
  core.String? name;

  /// OIDC specific configuration.
  IdentityServiceOidcConfig? oidcConfig;

  /// Proxy server address to use for auth method.
  core.String? proxy;

  /// SAML specific configuration.
  IdentityServiceSamlConfig? samlConfig;

  IdentityServiceAuthMethod({
    this.azureadConfig,
    this.googleConfig,
    this.ldapConfig,
    this.name,
    this.oidcConfig,
    this.proxy,
    this.samlConfig,
  });

  IdentityServiceAuthMethod.fromJson(core.Map json_)
      : this(
          azureadConfig: json_.containsKey('azureadConfig')
              ? IdentityServiceAzureADConfig.fromJson(
                  json_['azureadConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          googleConfig: json_.containsKey('googleConfig')
              ? IdentityServiceGoogleConfig.fromJson(
                  json_['googleConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          ldapConfig: json_.containsKey('ldapConfig')
              ? IdentityServiceLdapConfig.fromJson(
                  json_['ldapConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oidcConfig: json_.containsKey('oidcConfig')
              ? IdentityServiceOidcConfig.fromJson(
                  json_['oidcConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          proxy:
              json_.containsKey('proxy') ? json_['proxy'] as core.String : null,
          samlConfig: json_.containsKey('samlConfig')
              ? IdentityServiceSamlConfig.fromJson(
                  json_['samlConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azureadConfig != null) 'azureadConfig': azureadConfig!,
        if (googleConfig != null) 'googleConfig': googleConfig!,
        if (ldapConfig != null) 'ldapConfig': ldapConfig!,
        if (name != null) 'name': name!,
        if (oidcConfig != null) 'oidcConfig': oidcConfig!,
        if (proxy != null) 'proxy': proxy!,
        if (samlConfig != null) 'samlConfig': samlConfig!,
      };
}

/// Configuration for the AzureAD Auth flow.
class IdentityServiceAzureADConfig {
  /// ID for the registered client application that makes authentication
  /// requests to the Azure AD identity provider.
  core.String? clientId;

  /// Input only.
  ///
  /// Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  core.String? clientSecret;

  /// Encrypted AzureAD client secret.
  ///
  /// Output only.
  core.String? encryptedClientSecret;
  core.List<core.int> get encryptedClientSecretAsBytes =>
      convert.base64.decode(encryptedClientSecret!);

  set encryptedClientSecretAsBytes(core.List<core.int> bytes_) {
    encryptedClientSecret =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Format of the AzureAD groups that the client wants for auth.
  ///
  /// Optional.
  core.String? groupFormat;

  /// The redirect URL that kubectl uses for authorization.
  core.String? kubectlRedirectUri;

  /// Kind of Azure AD account to be authenticated.
  ///
  /// Supported values are or for accounts belonging to a specific tenant.
  core.String? tenant;

  /// Claim in the AzureAD ID Token that holds the user details.
  ///
  /// Optional.
  core.String? userClaim;

  IdentityServiceAzureADConfig({
    this.clientId,
    this.clientSecret,
    this.encryptedClientSecret,
    this.groupFormat,
    this.kubectlRedirectUri,
    this.tenant,
    this.userClaim,
  });

  IdentityServiceAzureADConfig.fromJson(core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          encryptedClientSecret: json_.containsKey('encryptedClientSecret')
              ? json_['encryptedClientSecret'] as core.String
              : null,
          groupFormat: json_.containsKey('groupFormat')
              ? json_['groupFormat'] as core.String
              : null,
          kubectlRedirectUri: json_.containsKey('kubectlRedirectUri')
              ? json_['kubectlRedirectUri'] as core.String
              : null,
          tenant: json_.containsKey('tenant')
              ? json_['tenant'] as core.String
              : null,
          userClaim: json_.containsKey('userClaim')
              ? json_['userClaim'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (encryptedClientSecret != null)
          'encryptedClientSecret': encryptedClientSecret!,
        if (groupFormat != null) 'groupFormat': groupFormat!,
        if (kubectlRedirectUri != null)
          'kubectlRedirectUri': kubectlRedirectUri!,
        if (tenant != null) 'tenant': tenant!,
        if (userClaim != null) 'userClaim': userClaim!,
      };
}

/// Configuration for the Google Plugin Auth flow.
class IdentityServiceGoogleConfig {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  core.bool? disable;

  IdentityServiceGoogleConfig({
    this.disable,
  });

  IdentityServiceGoogleConfig.fromJson(core.Map json_)
      : this(
          disable: json_.containsKey('disable')
              ? json_['disable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disable != null) 'disable': disable!,
      };
}

/// Contains the properties for locating and authenticating groups in the
/// directory.
class IdentityServiceGroupConfig {
  /// The location of the subtree in the LDAP directory to search for group
  /// entries.
  ///
  /// Required.
  core.String? baseDn;

  /// Optional filter to be used when searching for groups a user belongs to.
  ///
  /// This can be used to explicitly match only certain groups in order to
  /// reduce the amount of groups returned for each user. This defaults to
  /// "(objectClass=Group)".
  ///
  /// Optional.
  core.String? filter;

  /// The identifying name of each group a user belongs to.
  ///
  /// For example, if this is set to "distinguishedName" then RBACs and other
  /// group expectations should be written as full DNs. This defaults to
  /// "distinguishedName".
  ///
  /// Optional.
  core.String? idAttribute;

  IdentityServiceGroupConfig({
    this.baseDn,
    this.filter,
    this.idAttribute,
  });

  IdentityServiceGroupConfig.fromJson(core.Map json_)
      : this(
          baseDn: json_.containsKey('baseDn')
              ? json_['baseDn'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          idAttribute: json_.containsKey('idAttribute')
              ? json_['idAttribute'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseDn != null) 'baseDn': baseDn!,
        if (filter != null) 'filter': filter!,
        if (idAttribute != null) 'idAttribute': idAttribute!,
      };
}

/// Configuration for the LDAP Auth flow.
class IdentityServiceLdapConfig {
  /// Contains the properties for locating and authenticating groups in the
  /// directory.
  ///
  /// Optional.
  IdentityServiceGroupConfig? group;

  /// Server settings for the external LDAP server.
  ///
  /// Required.
  IdentityServiceServerConfig? server;

  /// Contains the credentials of the service account which is authorized to
  /// perform the LDAP search in the directory.
  ///
  /// The credentials can be supplied by the combination of the DN and password
  /// or the client certificate.
  ///
  /// Required.
  IdentityServiceServiceAccountConfig? serviceAccount;

  /// Defines where users exist in the LDAP directory.
  ///
  /// Required.
  IdentityServiceUserConfig? user;

  IdentityServiceLdapConfig({
    this.group,
    this.server,
    this.serviceAccount,
    this.user,
  });

  IdentityServiceLdapConfig.fromJson(core.Map json_)
      : this(
          group: json_.containsKey('group')
              ? IdentityServiceGroupConfig.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>)
              : null,
          server: json_.containsKey('server')
              ? IdentityServiceServerConfig.fromJson(
                  json_['server'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? IdentityServiceServiceAccountConfig.fromJson(
                  json_['serviceAccount']
                      as core.Map<core.String, core.dynamic>)
              : null,
          user: json_.containsKey('user')
              ? IdentityServiceUserConfig.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (server != null) 'server': server!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (user != null) 'user': user!,
      };
}

/// **Anthos Identity Service**: Configuration for a single Membership.
class IdentityServiceMembershipSpec {
  /// A member may support multiple auth methods.
  core.List<IdentityServiceAuthMethod>? authMethods;

  IdentityServiceMembershipSpec({
    this.authMethods,
  });

  IdentityServiceMembershipSpec.fromJson(core.Map json_)
      : this(
          authMethods: json_.containsKey('authMethods')
              ? (json_['authMethods'] as core.List)
                  .map((value) => IdentityServiceAuthMethod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authMethods != null) 'authMethods': authMethods!,
      };
}

/// **Anthos Identity Service**: State for a single Membership.
class IdentityServiceMembershipState {
  /// The reason of the failure.
  core.String? failureReason;

  /// Installed AIS version.
  ///
  /// This is the AIS version installed on this member. The values makes sense
  /// iff state is OK.
  core.String? installedVersion;

  /// Last reconciled membership configuration
  IdentityServiceMembershipSpec? memberConfig;

  /// Deployment state on this member
  /// Possible string values are:
  /// - "DEPLOYMENT_STATE_UNSPECIFIED" : Unspecified state
  /// - "OK" : deployment succeeds
  /// - "ERROR" : Failure with error.
  core.String? state;

  IdentityServiceMembershipState({
    this.failureReason,
    this.installedVersion,
    this.memberConfig,
    this.state,
  });

  IdentityServiceMembershipState.fromJson(core.Map json_)
      : this(
          failureReason: json_.containsKey('failureReason')
              ? json_['failureReason'] as core.String
              : null,
          installedVersion: json_.containsKey('installedVersion')
              ? json_['installedVersion'] as core.String
              : null,
          memberConfig: json_.containsKey('memberConfig')
              ? IdentityServiceMembershipSpec.fromJson(
                  json_['memberConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureReason != null) 'failureReason': failureReason!,
        if (installedVersion != null) 'installedVersion': installedVersion!,
        if (memberConfig != null) 'memberConfig': memberConfig!,
        if (state != null) 'state': state!,
      };
}

/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfig {
  /// PEM-encoded CA for OIDC provider.
  core.String? certificateAuthorityData;

  /// ID for OIDC client application.
  core.String? clientId;

  /// Input only.
  ///
  /// Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  core.String? clientSecret;

  /// Flag to denote if reverse proxy is used to connect to auth provider.
  ///
  /// This flag should be set to true when provider is not reachable by Google
  /// Cloud Console.
  core.bool? deployCloudConsoleProxy;

  /// Enable access token.
  core.bool? enableAccessToken;

  /// Encrypted OIDC Client secret
  ///
  /// Output only.
  core.String? encryptedClientSecret;
  core.List<core.int> get encryptedClientSecretAsBytes =>
      convert.base64.decode(encryptedClientSecret!);

  set encryptedClientSecretAsBytes(core.List<core.int> bytes_) {
    encryptedClientSecret =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Comma-separated list of key-value pairs.
  core.String? extraParams;

  /// Prefix to prepend to group name.
  core.String? groupPrefix;

  /// Claim in OIDC ID token that holds group information.
  core.String? groupsClaim;

  /// URI for the OIDC provider.
  ///
  /// This should point to the level below .well-known/openid-configuration.
  core.String? issuerUri;

  /// Registered redirect uri to redirect users going through OAuth flow using
  /// kubectl plugin.
  core.String? kubectlRedirectUri;

  /// Comma-separated list of identifiers.
  core.String? scopes;

  /// Claim in OIDC ID token that holds username.
  core.String? userClaim;

  /// Prefix to prepend to user name.
  core.String? userPrefix;

  IdentityServiceOidcConfig({
    this.certificateAuthorityData,
    this.clientId,
    this.clientSecret,
    this.deployCloudConsoleProxy,
    this.enableAccessToken,
    this.encryptedClientSecret,
    this.extraParams,
    this.groupPrefix,
    this.groupsClaim,
    this.issuerUri,
    this.kubectlRedirectUri,
    this.scopes,
    this.userClaim,
    this.userPrefix,
  });

  IdentityServiceOidcConfig.fromJson(core.Map json_)
      : this(
          certificateAuthorityData:
              json_.containsKey('certificateAuthorityData')
                  ? json_['certificateAuthorityData'] as core.String
                  : null,
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? json_['clientSecret'] as core.String
              : null,
          deployCloudConsoleProxy: json_.containsKey('deployCloudConsoleProxy')
              ? json_['deployCloudConsoleProxy'] as core.bool
              : null,
          enableAccessToken: json_.containsKey('enableAccessToken')
              ? json_['enableAccessToken'] as core.bool
              : null,
          encryptedClientSecret: json_.containsKey('encryptedClientSecret')
              ? json_['encryptedClientSecret'] as core.String
              : null,
          extraParams: json_.containsKey('extraParams')
              ? json_['extraParams'] as core.String
              : null,
          groupPrefix: json_.containsKey('groupPrefix')
              ? json_['groupPrefix'] as core.String
              : null,
          groupsClaim: json_.containsKey('groupsClaim')
              ? json_['groupsClaim'] as core.String
              : null,
          issuerUri: json_.containsKey('issuerUri')
              ? json_['issuerUri'] as core.String
              : null,
          kubectlRedirectUri: json_.containsKey('kubectlRedirectUri')
              ? json_['kubectlRedirectUri'] as core.String
              : null,
          scopes: json_.containsKey('scopes')
              ? json_['scopes'] as core.String
              : null,
          userClaim: json_.containsKey('userClaim')
              ? json_['userClaim'] as core.String
              : null,
          userPrefix: json_.containsKey('userPrefix')
              ? json_['userPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthorityData != null)
          'certificateAuthorityData': certificateAuthorityData!,
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (deployCloudConsoleProxy != null)
          'deployCloudConsoleProxy': deployCloudConsoleProxy!,
        if (enableAccessToken != null) 'enableAccessToken': enableAccessToken!,
        if (encryptedClientSecret != null)
          'encryptedClientSecret': encryptedClientSecret!,
        if (extraParams != null) 'extraParams': extraParams!,
        if (groupPrefix != null) 'groupPrefix': groupPrefix!,
        if (groupsClaim != null) 'groupsClaim': groupsClaim!,
        if (issuerUri != null) 'issuerUri': issuerUri!,
        if (kubectlRedirectUri != null)
          'kubectlRedirectUri': kubectlRedirectUri!,
        if (scopes != null) 'scopes': scopes!,
        if (userClaim != null) 'userClaim': userClaim!,
        if (userPrefix != null) 'userPrefix': userPrefix!,
      };
}

/// Configuration for the SAML Auth flow.
class IdentityServiceSamlConfig {
  /// The mapping of additional user attributes like nickname, birthday and
  /// address etc..
  ///
  /// `key` is the name of this additional attribute. `value` is a string
  /// presenting as CEL(common expression language, go/cel) used for getting the
  /// value from the resources. Take nickname as an example, in this case, `key`
  /// is "attribute.nickname" and `value` is "assertion.nickname".
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributeMapping;

  /// Prefix to prepend to group name.
  ///
  /// Optional.
  core.String? groupPrefix;

  /// The SAML attribute to read groups from.
  ///
  /// This value is expected to be a string and will be passed along as-is (with
  /// the option of being prefixed by the `group_prefix`).
  ///
  /// Optional.
  core.String? groupsAttribute;

  /// The list of IdP certificates to validate the SAML response against.
  ///
  /// Required.
  core.List<core.String>? identityProviderCertificates;

  /// The entity ID of the SAML IdP.
  ///
  /// Required.
  core.String? identityProviderId;

  /// The URI where the SAML IdP exposes the SSO service.
  ///
  /// Required.
  core.String? identityProviderSsoUri;

  /// The SAML attribute to read username from.
  ///
  /// If unspecified, the username will be read from the NameID element of the
  /// assertion in SAML response. This value is expected to be a string and will
  /// be passed along as-is (with the option of being prefixed by the
  /// `user_prefix`).
  ///
  /// Optional.
  core.String? userAttribute;

  /// Prefix to prepend to user name.
  ///
  /// Optional.
  core.String? userPrefix;

  IdentityServiceSamlConfig({
    this.attributeMapping,
    this.groupPrefix,
    this.groupsAttribute,
    this.identityProviderCertificates,
    this.identityProviderId,
    this.identityProviderSsoUri,
    this.userAttribute,
    this.userPrefix,
  });

  IdentityServiceSamlConfig.fromJson(core.Map json_)
      : this(
          attributeMapping: json_.containsKey('attributeMapping')
              ? (json_['attributeMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          groupPrefix: json_.containsKey('groupPrefix')
              ? json_['groupPrefix'] as core.String
              : null,
          groupsAttribute: json_.containsKey('groupsAttribute')
              ? json_['groupsAttribute'] as core.String
              : null,
          identityProviderCertificates:
              json_.containsKey('identityProviderCertificates')
                  ? (json_['identityProviderCertificates'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          identityProviderId: json_.containsKey('identityProviderId')
              ? json_['identityProviderId'] as core.String
              : null,
          identityProviderSsoUri: json_.containsKey('identityProviderSsoUri')
              ? json_['identityProviderSsoUri'] as core.String
              : null,
          userAttribute: json_.containsKey('userAttribute')
              ? json_['userAttribute'] as core.String
              : null,
          userPrefix: json_.containsKey('userPrefix')
              ? json_['userPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeMapping != null) 'attributeMapping': attributeMapping!,
        if (groupPrefix != null) 'groupPrefix': groupPrefix!,
        if (groupsAttribute != null) 'groupsAttribute': groupsAttribute!,
        if (identityProviderCertificates != null)
          'identityProviderCertificates': identityProviderCertificates!,
        if (identityProviderId != null)
          'identityProviderId': identityProviderId!,
        if (identityProviderSsoUri != null)
          'identityProviderSsoUri': identityProviderSsoUri!,
        if (userAttribute != null) 'userAttribute': userAttribute!,
        if (userPrefix != null) 'userPrefix': userPrefix!,
      };
}

/// Server settings for the external LDAP server.
class IdentityServiceServerConfig {
  /// Contains a Base64 encoded, PEM formatted certificate authority certificate
  /// for the LDAP server.
  ///
  /// This must be provided for the "ldaps" and "startTLS" connections.
  ///
  /// Optional.
  core.String? certificateAuthorityData;
  core.List<core.int> get certificateAuthorityDataAsBytes =>
      convert.base64.decode(certificateAuthorityData!);

  set certificateAuthorityDataAsBytes(core.List<core.int> bytes_) {
    certificateAuthorityData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Defines the connection type to communicate with the LDAP server.
  ///
  /// If `starttls` or `ldaps` is specified, the certificate_authority_data
  /// should not be empty.
  ///
  /// Optional.
  core.String? connectionType;

  /// Defines the hostname or IP of the LDAP server.
  ///
  /// Port is optional and will default to 389, if unspecified. For example,
  /// "ldap.server.example" or "10.10.10.10:389".
  ///
  /// Required.
  core.String? host;

  IdentityServiceServerConfig({
    this.certificateAuthorityData,
    this.connectionType,
    this.host,
  });

  IdentityServiceServerConfig.fromJson(core.Map json_)
      : this(
          certificateAuthorityData:
              json_.containsKey('certificateAuthorityData')
                  ? json_['certificateAuthorityData'] as core.String
                  : null,
          connectionType: json_.containsKey('connectionType')
              ? json_['connectionType'] as core.String
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateAuthorityData != null)
          'certificateAuthorityData': certificateAuthorityData!,
        if (connectionType != null) 'connectionType': connectionType!,
        if (host != null) 'host': host!,
      };
}

/// Contains the credentials of the service account which is authorized to
/// perform the LDAP search in the directory.
///
/// The credentials can be supplied by the combination of the DN and password or
/// the client certificate.
class IdentityServiceServiceAccountConfig {
  /// Credentials for basic auth.
  IdentityServiceSimpleBindCredentials? simpleBindCredentials;

  IdentityServiceServiceAccountConfig({
    this.simpleBindCredentials,
  });

  IdentityServiceServiceAccountConfig.fromJson(core.Map json_)
      : this(
          simpleBindCredentials: json_.containsKey('simpleBindCredentials')
              ? IdentityServiceSimpleBindCredentials.fromJson(
                  json_['simpleBindCredentials']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (simpleBindCredentials != null)
          'simpleBindCredentials': simpleBindCredentials!,
      };
}

/// The structure holds the LDAP simple binding credential.
class IdentityServiceSimpleBindCredentials {
  /// The distinguished name(DN) of the service account object/user.
  ///
  /// Required.
  core.String? dn;

  /// The encrypted password of the service account object/user.
  ///
  /// Output only.
  core.String? encryptedPassword;
  core.List<core.int> get encryptedPasswordAsBytes =>
      convert.base64.decode(encryptedPassword!);

  set encryptedPasswordAsBytes(core.List<core.int> bytes_) {
    encryptedPassword =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Input only.
  ///
  /// The password of the service account object/user.
  ///
  /// Required.
  core.String? password;

  IdentityServiceSimpleBindCredentials({
    this.dn,
    this.encryptedPassword,
    this.password,
  });

  IdentityServiceSimpleBindCredentials.fromJson(core.Map json_)
      : this(
          dn: json_.containsKey('dn') ? json_['dn'] as core.String : null,
          encryptedPassword: json_.containsKey('encryptedPassword')
              ? json_['encryptedPassword'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dn != null) 'dn': dn!,
        if (encryptedPassword != null) 'encryptedPassword': encryptedPassword!,
        if (password != null) 'password': password!,
      };
}

/// Defines where users exist in the LDAP directory.
class IdentityServiceUserConfig {
  /// The location of the subtree in the LDAP directory to search for user
  /// entries.
  ///
  /// Required.
  core.String? baseDn;

  /// Filter to apply when searching for the user.
  ///
  /// This can be used to further restrict the user accounts which are allowed
  /// to login. This defaults to "(objectClass=User)".
  ///
  /// Optional.
  core.String? filter;

  /// Determines which attribute to use as the user's identity after they are
  /// authenticated.
  ///
  /// This is distinct from the loginAttribute field to allow users to login
  /// with a username, but then have their actual identifier be an email address
  /// or full Distinguished Name (DN). For example, setting loginAttribute to
  /// "sAMAccountName" and identifierAttribute to "userPrincipalName" would
  /// allow a user to login as "bsmith", but actual RBAC policies for the user
  /// would be written as "bsmith@example.com". Using "userPrincipalName" is
  /// recommended since this will be unique for each user. This defaults to
  /// "userPrincipalName".
  ///
  /// Optional.
  core.String? idAttribute;

  /// The name of the attribute which matches against the input username.
  ///
  /// This is used to find the user in the LDAP database e.g. "(=)" and is
  /// combined with the optional filter field. This defaults to
  /// "userPrincipalName".
  ///
  /// Optional.
  core.String? loginAttribute;

  IdentityServiceUserConfig({
    this.baseDn,
    this.filter,
    this.idAttribute,
    this.loginAttribute,
  });

  IdentityServiceUserConfig.fromJson(core.Map json_)
      : this(
          baseDn: json_.containsKey('baseDn')
              ? json_['baseDn'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          idAttribute: json_.containsKey('idAttribute')
              ? json_['idAttribute'] as core.String
              : null,
          loginAttribute: json_.containsKey('loginAttribute')
              ? json_['loginAttribute'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseDn != null) 'baseDn': baseDn!,
        if (filter != null) 'filter': filter!,
        if (idAttribute != null) 'idAttribute': idAttribute!,
        if (loginAttribute != null) 'loginAttribute': loginAttribute!,
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

  KubernetesMetadata({
    this.kubernetesApiServerVersion,
    this.memoryMb,
    this.nodeCount,
    this.nodeProviderId,
    this.updateTime,
    this.vcpuCount,
  });

  KubernetesMetadata.fromJson(core.Map json_)
      : this(
          kubernetesApiServerVersion:
              json_.containsKey('kubernetesApiServerVersion')
                  ? json_['kubernetesApiServerVersion'] as core.String
                  : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
          nodeProviderId: json_.containsKey('nodeProviderId')
              ? json_['nodeProviderId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vcpuCount: json_.containsKey('vcpuCount')
              ? json_['vcpuCount'] as core.int
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

  KubernetesResource.fromJson(core.Map json_)
      : this(
          connectResources: json_.containsKey('connectResources')
              ? (json_['connectResources'] as core.List)
                  .map((value) => ResourceManifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          membershipCrManifest: json_.containsKey('membershipCrManifest')
              ? json_['membershipCrManifest'] as core.String
              : null,
          membershipResources: json_.containsKey('membershipResources')
              ? (json_['membershipResources'] as core.List)
                  .map((value) => ResourceManifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceOptions: json_.containsKey('resourceOptions')
              ? ResourceOptions.fromJson(json_['resourceOptions']
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

/// List of Memberships bound to a Scope.
class ListBoundMembershipsResponse {
  /// The list of Memberships bound to the given Scope.
  core.List<Membership>? memberships;

  /// A token to request the next page of resources from the
  /// `ListBoundMemberships` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// List of locations that could not be reached while fetching this list.
  core.List<core.String>? unreachable;

  ListBoundMembershipsResponse({
    this.memberships,
    this.nextPageToken,
    this.unreachable,
  });

  ListBoundMembershipsResponse.fromJson(core.Map json_)
      : this(
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
        if (memberships != null) 'memberships': memberships!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListFeaturesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
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

/// Response message for the `GkeHub.ListFleetsResponse` method.
class ListFleetsResponse {
  /// The list of matching fleets.
  core.List<Fleet>? fleets;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. The token is only
  /// valid for 1h.
  core.String? nextPageToken;

  ListFleetsResponse({
    this.fleets,
    this.nextPageToken,
  });

  ListFleetsResponse.fromJson(core.Map json_)
      : this(
          fleets: json_.containsKey('fleets')
              ? (json_['fleets'] as core.List)
                  .map((value) => Fleet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fleets != null) 'fleets': fleets!,
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

/// List of MembershipBindings.
class ListMembershipBindingsResponse {
  /// The list of membership_bindings
  core.List<MembershipBinding>? membershipBindings;

  /// A token to request the next page of resources from the
  /// `ListMembershipBindings` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  ListMembershipBindingsResponse({
    this.membershipBindings,
    this.nextPageToken,
  });

  ListMembershipBindingsResponse.fromJson(core.Map json_)
      : this(
          membershipBindings: json_.containsKey('membershipBindings')
              ? (json_['membershipBindings'] as core.List)
                  .map((value) => MembershipBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membershipBindings != null)
          'membershipBindings': membershipBindings!,
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

  ListMembershipsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

/// List of permitted Scopes.
class ListPermittedScopesResponse {
  /// A token to request the next page of resources from the
  /// `ListPermittedScopes` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of permitted Scopes
  core.List<Scope>? scopes;

  ListPermittedScopesResponse({
    this.nextPageToken,
    this.scopes,
  });

  ListPermittedScopesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => Scope.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scopes != null) 'scopes': scopes!,
      };
}

/// List of fleet namespaces.
class ListScopeNamespacesResponse {
  /// A token to request the next page of resources from the `ListNamespaces`
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of fleet namespaces
  core.List<Namespace>? scopeNamespaces;

  ListScopeNamespacesResponse({
    this.nextPageToken,
    this.scopeNamespaces,
  });

  ListScopeNamespacesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scopeNamespaces: json_.containsKey('scopeNamespaces')
              ? (json_['scopeNamespaces'] as core.List)
                  .map((value) => Namespace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scopeNamespaces != null) 'scopeNamespaces': scopeNamespaces!,
      };
}

/// List of Scope RBACRoleBindings.
class ListScopeRBACRoleBindingsResponse {
  /// A token to request the next page of resources from the
  /// `ListScopeRBACRoleBindings` method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of Scope RBACRoleBindings.
  core.List<RBACRoleBinding>? rbacrolebindings;

  ListScopeRBACRoleBindingsResponse({
    this.nextPageToken,
    this.rbacrolebindings,
  });

  ListScopeRBACRoleBindingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rbacrolebindings: json_.containsKey('rbacrolebindings')
              ? (json_['rbacrolebindings'] as core.List)
                  .map((value) => RBACRoleBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rbacrolebindings != null) 'rbacrolebindings': rbacrolebindings!,
      };
}

/// List of Scopes.
class ListScopesResponse {
  /// A token to request the next page of resources from the `ListScopes`
  /// method.
  ///
  /// The value of an empty string means that there are no more resources to
  /// return.
  core.String? nextPageToken;

  /// The list of Scopes
  core.List<Scope>? scopes;

  ListScopesResponse({
    this.nextPageToken,
    this.scopes,
  });

  ListScopesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => Scope.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scopes != null) 'scopes': scopes!,
      };
}

/// A resource that represents a Google Cloud location.
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

  /// Labels for this membership.
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

  /// The monitoring config information for this membership.
  ///
  /// Optional.
  MonitoringConfig? monitoringConfig;

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
    this.monitoringConfig,
    this.name,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Membership.fromJson(core.Map json_)
      : this(
          authority: json_.containsKey('authority')
              ? Authority.fromJson(
                  json_['authority'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endpoint: json_.containsKey('endpoint')
              ? MembershipEndpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lastConnectionTime: json_.containsKey('lastConnectionTime')
              ? json_['lastConnectionTime'] as core.String
              : null,
          monitoringConfig: json_.containsKey('monitoringConfig')
              ? MonitoringConfig.fromJson(json_['monitoringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state: json_.containsKey('state')
              ? MembershipState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uniqueId: json_.containsKey('uniqueId')
              ? json_['uniqueId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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
        if (monitoringConfig != null) 'monitoringConfig': monitoringConfig!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// MembershipBinding is a subresource of a Membership, representing what Fleet
/// Scopes (or other, future Fleet resources) a Membership is bound to.
class MembershipBinding {
  /// When the membership binding was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the membership binding was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Labels for this MembershipBinding.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for the membershipbinding itself
  /// `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  core.String? name;

  /// A Scope resource name in the format `projects / * /locations / * /scopes /
  /// * `.
  core.String? scope;

  /// State of the membership binding resource.
  ///
  /// Output only.
  MembershipBindingLifecycleState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all membershipbinding resources. If a
  /// membershipbinding resource is deleted and another resource with the same
  /// name is created, it gets a different uid.
  ///
  /// Output only.
  core.String? uid;

  /// When the membership binding was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MembershipBinding({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.scope,
    this.state,
    this.uid,
    this.updateTime,
  });

  MembershipBinding.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          state: json_.containsKey('state')
              ? MembershipBindingLifecycleState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (scope != null) 'scope': scope!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleState {
  /// The current state of the MembershipBinding resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The membershipbinding is being created.
  /// - "READY" : The membershipbinding active.
  /// - "DELETING" : The membershipbinding is being deleted.
  /// - "UPDATING" : The membershipbinding is being updated.
  core.String? code;

  MembershipBindingLifecycleState({
    this.code,
  });

  MembershipBindingLifecycleState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// MembershipEndpoint contains information needed to contact a Kubernetes API,
/// endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// Specific information for a GDC Edge Appliance cluster.
  ///
  /// Optional.
  ApplianceCluster? applianceCluster;

  /// Specific information for a Google Edge cluster.
  ///
  /// Optional.
  EdgeCluster? edgeCluster;

  /// Specific information for a GKE-on-GCP cluster.
  ///
  /// Optional.
  GkeCluster? gkeCluster;

  /// Whether the lifecycle of this membership is managed by a google cluster
  /// platform service.
  ///
  /// Output only.
  core.bool? googleManaged;

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
    this.applianceCluster,
    this.edgeCluster,
    this.gkeCluster,
    this.googleManaged,
    this.kubernetesMetadata,
    this.kubernetesResource,
    this.multiCloudCluster,
    this.onPremCluster,
  });

  MembershipEndpoint.fromJson(core.Map json_)
      : this(
          applianceCluster: json_.containsKey('applianceCluster')
              ? ApplianceCluster.fromJson(json_['applianceCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
          edgeCluster: json_.containsKey('edgeCluster')
              ? EdgeCluster.fromJson(
                  json_['edgeCluster'] as core.Map<core.String, core.dynamic>)
              : null,
          gkeCluster: json_.containsKey('gkeCluster')
              ? GkeCluster.fromJson(
                  json_['gkeCluster'] as core.Map<core.String, core.dynamic>)
              : null,
          googleManaged: json_.containsKey('googleManaged')
              ? json_['googleManaged'] as core.bool
              : null,
          kubernetesMetadata: json_.containsKey('kubernetesMetadata')
              ? KubernetesMetadata.fromJson(json_['kubernetesMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kubernetesResource: json_.containsKey('kubernetesResource')
              ? KubernetesResource.fromJson(json_['kubernetesResource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          multiCloudCluster: json_.containsKey('multiCloudCluster')
              ? MultiCloudCluster.fromJson(json_['multiCloudCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
          onPremCluster: json_.containsKey('onPremCluster')
              ? OnPremCluster.fromJson(
                  json_['onPremCluster'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applianceCluster != null) 'applianceCluster': applianceCluster!,
        if (edgeCluster != null) 'edgeCluster': edgeCluster!,
        if (gkeCluster != null) 'gkeCluster': gkeCluster!,
        if (googleManaged != null) 'googleManaged': googleManaged!,
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
///
/// NOTE: Please use snake case in your feature name.
class MembershipFeatureSpec {
  /// Config Management-specific spec.
  ConfigManagementMembershipSpec? configmanagement;

  /// Fleet observability membership spec
  FleetObservabilityMembershipSpec? fleetobservability;

  /// Identity Service-specific spec.
  IdentityServiceMembershipSpec? identityservice;

  /// Anthos Service Mesh-specific spec
  ServiceMeshMembershipSpec? mesh;

  /// Whether this per-Membership spec was inherited from a fleet-level default.
  ///
  /// This field can be updated by users by either overriding a Membership
  /// config (updated to USER implicitly) or setting to FLEET explicitly.
  Origin? origin;

  /// Policy Controller spec.
  PolicyControllerMembershipSpec? policycontroller;

  MembershipFeatureSpec({
    this.configmanagement,
    this.fleetobservability,
    this.identityservice,
    this.mesh,
    this.origin,
    this.policycontroller,
  });

  MembershipFeatureSpec.fromJson(core.Map json_)
      : this(
          configmanagement: json_.containsKey('configmanagement')
              ? ConfigManagementMembershipSpec.fromJson(
                  json_['configmanagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fleetobservability: json_.containsKey('fleetobservability')
              ? FleetObservabilityMembershipSpec.fromJson(
                  json_['fleetobservability']
                      as core.Map<core.String, core.dynamic>)
              : null,
          identityservice: json_.containsKey('identityservice')
              ? IdentityServiceMembershipSpec.fromJson(json_['identityservice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mesh: json_.containsKey('mesh')
              ? ServiceMeshMembershipSpec.fromJson(
                  json_['mesh'] as core.Map<core.String, core.dynamic>)
              : null,
          origin: json_.containsKey('origin')
              ? Origin.fromJson(
                  json_['origin'] as core.Map<core.String, core.dynamic>)
              : null,
          policycontroller: json_.containsKey('policycontroller')
              ? PolicyControllerMembershipSpec.fromJson(
                  json_['policycontroller']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (fleetobservability != null)
          'fleetobservability': fleetobservability!,
        if (identityservice != null) 'identityservice': identityservice!,
        if (mesh != null) 'mesh': mesh!,
        if (origin != null) 'origin': origin!,
        if (policycontroller != null) 'policycontroller': policycontroller!,
      };
}

/// MembershipFeatureState contains Feature status information for a single
/// Membership.
class MembershipFeatureState {
  /// Appdevexperience specific state.
  AppDevExperienceFeatureState? appdevexperience;

  /// ClusterUpgrade state.
  ClusterUpgradeMembershipState? clusterupgrade;

  /// Config Management-specific state.
  ConfigManagementMembershipState? configmanagement;

  /// Fleet observability membership state.
  FleetObservabilityMembershipState? fleetobservability;

  /// Identity Service-specific state.
  IdentityServiceMembershipState? identityservice;

  /// Policycontroller-specific state.
  PolicyControllerMembershipState? policycontroller;

  /// Service Mesh-specific state.
  ServiceMeshMembershipState? servicemesh;

  /// The high-level state of this Feature for a single membership.
  FeatureState? state;

  MembershipFeatureState({
    this.appdevexperience,
    this.clusterupgrade,
    this.configmanagement,
    this.fleetobservability,
    this.identityservice,
    this.policycontroller,
    this.servicemesh,
    this.state,
  });

  MembershipFeatureState.fromJson(core.Map json_)
      : this(
          appdevexperience: json_.containsKey('appdevexperience')
              ? AppDevExperienceFeatureState.fromJson(json_['appdevexperience']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clusterupgrade: json_.containsKey('clusterupgrade')
              ? ClusterUpgradeMembershipState.fromJson(json_['clusterupgrade']
                  as core.Map<core.String, core.dynamic>)
              : null,
          configmanagement: json_.containsKey('configmanagement')
              ? ConfigManagementMembershipState.fromJson(
                  json_['configmanagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fleetobservability: json_.containsKey('fleetobservability')
              ? FleetObservabilityMembershipState.fromJson(
                  json_['fleetobservability']
                      as core.Map<core.String, core.dynamic>)
              : null,
          identityservice: json_.containsKey('identityservice')
              ? IdentityServiceMembershipState.fromJson(json_['identityservice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          policycontroller: json_.containsKey('policycontroller')
              ? PolicyControllerMembershipState.fromJson(
                  json_['policycontroller']
                      as core.Map<core.String, core.dynamic>)
              : null,
          servicemesh: json_.containsKey('servicemesh')
              ? ServiceMeshMembershipState.fromJson(
                  json_['servicemesh'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? FeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appdevexperience != null) 'appdevexperience': appdevexperience!,
        if (clusterupgrade != null) 'clusterupgrade': clusterupgrade!,
        if (configmanagement != null) 'configmanagement': configmanagement!,
        if (fleetobservability != null)
          'fleetobservability': fleetobservability!,
        if (identityservice != null) 'identityservice': identityservice!,
        if (policycontroller != null) 'policycontroller': policycontroller!,
        if (servicemesh != null) 'servicemesh': servicemesh!,
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

  MembershipState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// MonitoringConfig informs Fleet-based applications/services/UIs how the
/// metrics for the underlying cluster is reported to cloud monitoring services.
///
/// It can be set from empty to non-empty, but can't be mutated directly to
/// prevent accidentally breaking the constinousty of metrics.
class MonitoringConfig {
  /// Cluster name used to report metrics.
  ///
  /// For Anthos on VMWare/Baremetal/MultiCloud clusters, it would be in format
  /// {cluster_type}/{cluster_name}, e.g., "awsClusters/cluster_1".
  ///
  /// Optional.
  core.String? cluster;

  /// For GKE and Multicloud clusters, this is the UUID of the cluster resource.
  ///
  /// For VMWare and Baremetal clusters, this is the kube-system UID.
  ///
  /// Optional.
  core.String? clusterHash;

  /// Kubernetes system metrics, if available, are written to this prefix.
  ///
  /// This defaults to kubernetes.io for GKE, and kubernetes.io/anthos for
  /// Anthos eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix
  /// today but will migration to be under kubernetes.io/anthos.
  ///
  /// Optional.
  core.String? kubernetesMetricsPrefix;

  /// Location used to report Metrics
  ///
  /// Optional.
  core.String? location;

  /// Project used to report Metrics
  ///
  /// Optional.
  core.String? projectId;

  MonitoringConfig({
    this.cluster,
    this.clusterHash,
    this.kubernetesMetricsPrefix,
    this.location,
    this.projectId,
  });

  MonitoringConfig.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          clusterHash: json_.containsKey('clusterHash')
              ? json_['clusterHash'] as core.String
              : null,
          kubernetesMetricsPrefix: json_.containsKey('kubernetesMetricsPrefix')
              ? json_['kubernetesMetricsPrefix'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (clusterHash != null) 'clusterHash': clusterHash!,
        if (kubernetesMetricsPrefix != null)
          'kubernetesMetricsPrefix': kubernetesMetricsPrefix!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
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

  /// Self-link of the Google Cloud resource for the GKE Multi-Cloud cluster.
  ///
  /// For example:
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster
  /// //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  ///
  /// Immutable.
  core.String? resourceLink;

  MultiCloudCluster({
    this.clusterMissing,
    this.resourceLink,
  });

  MultiCloudCluster.fromJson(core.Map json_)
      : this(
          clusterMissing: json_.containsKey('clusterMissing')
              ? json_['clusterMissing'] as core.bool
              : null,
          resourceLink: json_.containsKey('resourceLink')
              ? json_['resourceLink'] as core.String
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

  MultiClusterIngressFeatureSpec.fromJson(core.Map json_)
      : this(
          configMembership: json_.containsKey('configMembership')
              ? json_['configMembership'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMembership != null) 'configMembership': configMembership!,
      };
}

/// Namespace represents a namespace across the Fleet
class Namespace {
  /// When the namespace was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the namespace was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Labels for this Namespace.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for the namespace
  /// `projects/{project}/locations/{location}/namespaces/{namespace}`
  core.String? name;

  /// Namespace-level cluster namespace labels.
  ///
  /// These labels are applied to the related namespace of the member clusters
  /// bound to the parent Scope. Scope-level labels (`namespace_labels` in the
  /// Fleet Scope resource) take precedence over Namespace-level labels if they
  /// share a key. Keys and values must be Kubernetes-conformant.
  ///
  /// Optional.
  core.Map<core.String, core.String>? namespaceLabels;

  /// Scope associated with the namespace
  ///
  /// Required.
  core.String? scope;

  /// State of the namespace resource.
  ///
  /// Output only.
  NamespaceLifecycleState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all namespace resources. If a namespace resource is
  /// deleted and another resource with the same name is created, it gets a
  /// different uid.
  ///
  /// Output only.
  core.String? uid;

  /// When the namespace was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Namespace({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.namespaceLabels,
    this.scope,
    this.state,
    this.uid,
    this.updateTime,
  });

  Namespace.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namespaceLabels: json_.containsKey('namespaceLabels')
              ? (json_['namespaceLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          state: json_.containsKey('state')
              ? NamespaceLifecycleState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (namespaceLabels != null) 'namespaceLabels': namespaceLabels!,
        if (scope != null) 'scope': scope!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// NamespaceLifecycleState describes the state of a Namespace resource.
class NamespaceLifecycleState {
  /// The current state of the Namespace resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The namespace is being created.
  /// - "READY" : The namespace active.
  /// - "DELETING" : The namespace is being deleted.
  /// - "UPDATING" : The namespace is being updated.
  core.String? code;

  NamespaceLifecycleState({
    this.code,
  });

  NamespaceLifecycleState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
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

  /// The on prem cluster's type.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CLUSTERTYPE_UNSPECIFIED" : The ClusterType is not set.
  /// - "BOOTSTRAP" : The ClusterType is bootstrap cluster.
  /// - "HYBRID" : The ClusterType is baremetal hybrid cluster.
  /// - "STANDALONE" : The ClusterType is baremetal standalone cluster.
  /// - "USER" : The ClusterType is user cluster.
  core.String? clusterType;

  /// Self-link of the Google Cloud resource for the GKE On-Prem cluster.
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
    this.clusterType,
    this.resourceLink,
  });

  OnPremCluster.fromJson(core.Map json_)
      : this(
          adminCluster: json_.containsKey('adminCluster')
              ? json_['adminCluster'] as core.bool
              : null,
          clusterMissing: json_.containsKey('clusterMissing')
              ? json_['clusterMissing'] as core.bool
              : null,
          clusterType: json_.containsKey('clusterType')
              ? json_['clusterType'] as core.String
              : null,
          resourceLink: json_.containsKey('resourceLink')
              ? json_['resourceLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminCluster != null) 'adminCluster': adminCluster!,
        if (clusterMissing != null) 'clusterMissing': clusterMissing!,
        if (clusterType != null) 'clusterType': clusterType!,
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
              ? GoogleRpcStatus.fromJson(
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

/// Origin defines where this MembershipFeatureSpec originated from.
class Origin {
  /// Type specifies which type of origin is set.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type is unknown or not set.
  /// - "FLEET" : Per-Membership spec was inherited from the fleet-level
  /// default.
  /// - "FLEET_OUT_OF_SYNC" : Per-Membership spec was inherited from the
  /// fleet-level default but is now out of sync with the current default.
  /// - "USER" : Per-Membership spec was inherited from a user specification.
  core.String? type;

  Origin({
    this.type,
  });

  Origin.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
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

/// Binauthz policy that applies to this cluster.
class PolicyBinding {
  /// The relative resource name of the binauthz platform policy to audit.
  ///
  /// GKE platform policies have the following format:
  /// `projects/{project_number}/platforms/gke/policies/{policy_id}`.
  core.String? name;

  PolicyBinding({
    this.name,
  });

  PolicyBinding.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// BundleInstallSpec is the specification configuration for a single managed
/// bundle.
class PolicyControllerBundleInstallSpec {
  /// The set of namespaces to be exempted from the bundle.
  core.List<core.String>? exemptedNamespaces;

  PolicyControllerBundleInstallSpec({
    this.exemptedNamespaces,
  });

  PolicyControllerBundleInstallSpec.fromJson(core.Map json_)
      : this(
          exemptedNamespaces: json_.containsKey('exemptedNamespaces')
              ? (json_['exemptedNamespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedNamespaces != null)
          'exemptedNamespaces': exemptedNamespaces!,
      };
}

/// Configuration for Policy Controller
class PolicyControllerHubConfig {
  /// Sets the interval for Policy Controller Audit Scans (in seconds).
  ///
  /// When set to 0, this disables audit functionality altogether.
  core.String? auditIntervalSeconds;

  /// The maximum number of audit violations to be stored in a constraint.
  ///
  /// If not set, the internal default (currently 20) will be used.
  core.String? constraintViolationLimit;

  /// Map of deployment configs to deployments ("admission", "audit",
  /// "mutation').
  core.Map<core.String, PolicyControllerPolicyControllerDeploymentConfig>?
      deploymentConfigs;

  /// The set of namespaces that are excluded from Policy Controller checks.
  ///
  /// Namespaces do not need to currently exist on the cluster.
  core.List<core.String>? exemptableNamespaces;

  /// The install_spec represents the intended state specified by the latest
  /// request that mutated install_spec in the feature spec, not the lifecycle
  /// state of the feature observed by the Hub feature controller that is
  /// reported in the feature state.
  /// Possible string values are:
  /// - "INSTALL_SPEC_UNSPECIFIED" : Spec is unknown.
  /// - "INSTALL_SPEC_NOT_INSTALLED" : Request to uninstall Policy Controller.
  /// - "INSTALL_SPEC_ENABLED" : Request to install and enable Policy
  /// Controller.
  /// - "INSTALL_SPEC_SUSPENDED" : Request to suspend Policy Controller i.e. its
  /// webhooks. If Policy Controller is not installed, it will be installed but
  /// suspended.
  /// - "INSTALL_SPEC_DETACHED" : Request to stop all reconciliation actions by
  /// PoCo Hub controller. This is a breakglass mechanism to stop PoCo Hub from
  /// affecting cluster resources.
  core.String? installSpec;

  /// Logs all denies and dry run failures.
  core.bool? logDeniesEnabled;

  /// Monitoring specifies the configuration of monitoring.
  PolicyControllerMonitoringConfig? monitoring;

  /// Enables the ability to mutate resources using Policy Controller.
  core.bool? mutationEnabled;

  /// Specifies the desired policy content on the cluster
  PolicyControllerPolicyContentSpec? policyContent;

  /// Enables the ability to use Constraint Templates that reference to objects
  /// other than the object currently being evaluated.
  core.bool? referentialRulesEnabled;

  PolicyControllerHubConfig({
    this.auditIntervalSeconds,
    this.constraintViolationLimit,
    this.deploymentConfigs,
    this.exemptableNamespaces,
    this.installSpec,
    this.logDeniesEnabled,
    this.monitoring,
    this.mutationEnabled,
    this.policyContent,
    this.referentialRulesEnabled,
  });

  PolicyControllerHubConfig.fromJson(core.Map json_)
      : this(
          auditIntervalSeconds: json_.containsKey('auditIntervalSeconds')
              ? json_['auditIntervalSeconds'] as core.String
              : null,
          constraintViolationLimit:
              json_.containsKey('constraintViolationLimit')
                  ? json_['constraintViolationLimit'] as core.String
                  : null,
          deploymentConfigs: json_.containsKey('deploymentConfigs')
              ? (json_['deploymentConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    PolicyControllerPolicyControllerDeploymentConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          exemptableNamespaces: json_.containsKey('exemptableNamespaces')
              ? (json_['exemptableNamespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          installSpec: json_.containsKey('installSpec')
              ? json_['installSpec'] as core.String
              : null,
          logDeniesEnabled: json_.containsKey('logDeniesEnabled')
              ? json_['logDeniesEnabled'] as core.bool
              : null,
          monitoring: json_.containsKey('monitoring')
              ? PolicyControllerMonitoringConfig.fromJson(
                  json_['monitoring'] as core.Map<core.String, core.dynamic>)
              : null,
          mutationEnabled: json_.containsKey('mutationEnabled')
              ? json_['mutationEnabled'] as core.bool
              : null,
          policyContent: json_.containsKey('policyContent')
              ? PolicyControllerPolicyContentSpec.fromJson(
                  json_['policyContent'] as core.Map<core.String, core.dynamic>)
              : null,
          referentialRulesEnabled: json_.containsKey('referentialRulesEnabled')
              ? json_['referentialRulesEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditIntervalSeconds != null)
          'auditIntervalSeconds': auditIntervalSeconds!,
        if (constraintViolationLimit != null)
          'constraintViolationLimit': constraintViolationLimit!,
        if (deploymentConfigs != null) 'deploymentConfigs': deploymentConfigs!,
        if (exemptableNamespaces != null)
          'exemptableNamespaces': exemptableNamespaces!,
        if (installSpec != null) 'installSpec': installSpec!,
        if (logDeniesEnabled != null) 'logDeniesEnabled': logDeniesEnabled!,
        if (monitoring != null) 'monitoring': monitoring!,
        if (mutationEnabled != null) 'mutationEnabled': mutationEnabled!,
        if (policyContent != null) 'policyContent': policyContent!,
        if (referentialRulesEnabled != null)
          'referentialRulesEnabled': referentialRulesEnabled!,
      };
}

/// **Policy Controller**: Configuration for a single cluster.
///
/// Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpec {
  /// Policy Controller configuration for the cluster.
  PolicyControllerHubConfig? policyControllerHubConfig;

  /// Version of Policy Controller installed.
  core.String? version;

  PolicyControllerMembershipSpec({
    this.policyControllerHubConfig,
    this.version,
  });

  PolicyControllerMembershipSpec.fromJson(core.Map json_)
      : this(
          policyControllerHubConfig:
              json_.containsKey('policyControllerHubConfig')
                  ? PolicyControllerHubConfig.fromJson(
                      json_['policyControllerHubConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyControllerHubConfig != null)
          'policyControllerHubConfig': policyControllerHubConfig!,
        if (version != null) 'version': version!,
      };
}

/// **Policy Controller**: State for a single cluster.
class PolicyControllerMembershipState {
  /// Currently these include (also serving as map keys): 1.
  ///
  /// "admission" 2. "audit" 3. "mutation"
  core.Map<core.String, PolicyControllerOnClusterState>? componentStates;

  /// The overall content state observed by the Hub Feature controller.
  PolicyControllerPolicyContentState? policyContentState;

  /// The overall Policy Controller lifecycle state observed by the Hub Feature
  /// controller.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The lifecycle state is unspecified.
  /// - "NOT_INSTALLED" : The PC does not exist on the given cluster, and no k8s
  /// resources of any type that are associated with the PC should exist there.
  /// The cluster does not possess a membership with the PCH.
  /// - "INSTALLING" : The PCH possesses a Membership, however the PC is not
  /// fully installed on the cluster. In this state the hub can be expected to
  /// be taking actions to install the PC on the cluster.
  /// - "ACTIVE" : The PC is fully installed on the cluster and in an
  /// operational mode. In this state PCH will be reconciling state with the PC,
  /// and the PC will be performing it's operational tasks per that software.
  /// Entering a READY state requires that the hub has confirmed the PC is
  /// installed and its pods are operational with the version of the PC the PCH
  /// expects.
  /// - "UPDATING" : The PC is fully installed, but in the process of changing
  /// the configuration (including changing the version of PC either up and
  /// down, or modifying the manifests of PC) of the resources running on the
  /// cluster. The PCH has a Membership, is aware of the version the cluster
  /// should be running in, but has not confirmed for itself that the PC is
  /// running with that version.
  /// - "DECOMMISSIONING" : The PC may have resources on the cluster, but the
  /// PCH wishes to remove the Membership. The Membership still exists.
  /// - "CLUSTER_ERROR" : The PC is not operational, and the PCH is unable to
  /// act to make it operational. Entering a CLUSTER_ERROR state happens
  /// automatically when the PCH determines that a PC installed on the cluster
  /// is non-operative or that the cluster does not meet requirements set for
  /// the PCH to administer the cluster but has nevertheless been given an
  /// instruction to do so (such as 'install').
  /// - "HUB_ERROR" : In this state, the PC may still be operational, and only
  /// the PCH is unable to act. The hub should not issue instructions to change
  /// the PC state, or otherwise interfere with the on-cluster resources.
  /// Entering a HUB_ERROR state happens automatically when the PCH determines
  /// the hub is in an unhealthy state and it wishes to 'take hands off' to
  /// avoid corrupting the PC or other data.
  /// - "SUSPENDED" : Policy Controller (PC) is installed but suspended. This
  /// means that the policies are not enforced, but violations are still
  /// recorded (through audit).
  /// - "DETACHED" : PoCo Hub is not taking any action to reconcile cluster
  /// objects. Changes to those objects will not be overwritten by PoCo Hub.
  core.String? state;

  PolicyControllerMembershipState({
    this.componentStates,
    this.policyContentState,
    this.state,
  });

  PolicyControllerMembershipState.fromJson(core.Map json_)
      : this(
          componentStates: json_.containsKey('componentStates')
              ? (json_['componentStates']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    PolicyControllerOnClusterState.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          policyContentState: json_.containsKey('policyContentState')
              ? PolicyControllerPolicyContentState.fromJson(
                  json_['policyContentState']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentStates != null) 'componentStates': componentStates!,
        if (policyContentState != null)
          'policyContentState': policyContentState!,
        if (state != null) 'state': state!,
      };
}

/// MonitoringConfig specifies the backends Policy Controller should export
/// metrics to.
///
/// For example, to specify metrics should be exported to Cloud Monitoring and
/// Prometheus, specify backends: \["cloudmonitoring", "prometheus"\]
typedef PolicyControllerMonitoringConfig = $Shared09;

/// OnClusterState represents the state of a sub-component of Policy Controller.
class PolicyControllerOnClusterState {
  /// Surface potential errors or information logs.
  core.String? details;

  /// The lifecycle state of this component.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : The lifecycle state is unspecified.
  /// - "NOT_INSTALLED" : The PC does not exist on the given cluster, and no k8s
  /// resources of any type that are associated with the PC should exist there.
  /// The cluster does not possess a membership with the PCH.
  /// - "INSTALLING" : The PCH possesses a Membership, however the PC is not
  /// fully installed on the cluster. In this state the hub can be expected to
  /// be taking actions to install the PC on the cluster.
  /// - "ACTIVE" : The PC is fully installed on the cluster and in an
  /// operational mode. In this state PCH will be reconciling state with the PC,
  /// and the PC will be performing it's operational tasks per that software.
  /// Entering a READY state requires that the hub has confirmed the PC is
  /// installed and its pods are operational with the version of the PC the PCH
  /// expects.
  /// - "UPDATING" : The PC is fully installed, but in the process of changing
  /// the configuration (including changing the version of PC either up and
  /// down, or modifying the manifests of PC) of the resources running on the
  /// cluster. The PCH has a Membership, is aware of the version the cluster
  /// should be running in, but has not confirmed for itself that the PC is
  /// running with that version.
  /// - "DECOMMISSIONING" : The PC may have resources on the cluster, but the
  /// PCH wishes to remove the Membership. The Membership still exists.
  /// - "CLUSTER_ERROR" : The PC is not operational, and the PCH is unable to
  /// act to make it operational. Entering a CLUSTER_ERROR state happens
  /// automatically when the PCH determines that a PC installed on the cluster
  /// is non-operative or that the cluster does not meet requirements set for
  /// the PCH to administer the cluster but has nevertheless been given an
  /// instruction to do so (such as 'install').
  /// - "HUB_ERROR" : In this state, the PC may still be operational, and only
  /// the PCH is unable to act. The hub should not issue instructions to change
  /// the PC state, or otherwise interfere with the on-cluster resources.
  /// Entering a HUB_ERROR state happens automatically when the PCH determines
  /// the hub is in an unhealthy state and it wishes to 'take hands off' to
  /// avoid corrupting the PC or other data.
  /// - "SUSPENDED" : Policy Controller (PC) is installed but suspended. This
  /// means that the policies are not enforced, but violations are still
  /// recorded (through audit).
  /// - "DETACHED" : PoCo Hub is not taking any action to reconcile cluster
  /// objects. Changes to those objects will not be overwritten by PoCo Hub.
  core.String? state;

  PolicyControllerOnClusterState({
    this.details,
    this.state,
  });

  PolicyControllerOnClusterState.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
      };
}

/// PolicyContentSpec defines the user's desired content configuration on the
/// cluster.
class PolicyControllerPolicyContentSpec {
  /// map of bundle name to BundleInstallSpec.
  ///
  /// The bundle name maps to the `bundleName` key in the
  /// `policycontroller.gke.io/constraintData` annotation on a constraint.
  core.Map<core.String, PolicyControllerBundleInstallSpec>? bundles;

  /// Configures the installation of the Template Library.
  PolicyControllerTemplateLibraryConfig? templateLibrary;

  PolicyControllerPolicyContentSpec({
    this.bundles,
    this.templateLibrary,
  });

  PolicyControllerPolicyContentSpec.fromJson(core.Map json_)
      : this(
          bundles: json_.containsKey('bundles')
              ? (json_['bundles'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    PolicyControllerBundleInstallSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          templateLibrary: json_.containsKey('templateLibrary')
              ? PolicyControllerTemplateLibraryConfig.fromJson(
                  json_['templateLibrary']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null) 'bundles': bundles!,
        if (templateLibrary != null) 'templateLibrary': templateLibrary!,
      };
}

/// The state of the policy controller policy content
class PolicyControllerPolicyContentState {
  /// The state of the any bundles included in the chosen version of the
  /// manifest
  core.Map<core.String, PolicyControllerOnClusterState>? bundleStates;

  /// The state of the referential data sync configuration.
  ///
  /// This could represent the state of either the syncSet object(s) or the
  /// config object, depending on the version of PoCo configured by the user.
  PolicyControllerOnClusterState? referentialSyncConfigState;

  /// The state of the template library
  PolicyControllerOnClusterState? templateLibraryState;

  PolicyControllerPolicyContentState({
    this.bundleStates,
    this.referentialSyncConfigState,
    this.templateLibraryState,
  });

  PolicyControllerPolicyContentState.fromJson(core.Map json_)
      : this(
          bundleStates: json_.containsKey('bundleStates')
              ? (json_['bundleStates'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    PolicyControllerOnClusterState.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          referentialSyncConfigState:
              json_.containsKey('referentialSyncConfigState')
                  ? PolicyControllerOnClusterState.fromJson(
                      json_['referentialSyncConfigState']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          templateLibraryState: json_.containsKey('templateLibraryState')
              ? PolicyControllerOnClusterState.fromJson(
                  json_['templateLibraryState']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleStates != null) 'bundleStates': bundleStates!,
        if (referentialSyncConfigState != null)
          'referentialSyncConfigState': referentialSyncConfigState!,
        if (templateLibraryState != null)
          'templateLibraryState': templateLibraryState!,
      };
}

/// Deployment-specific configuration.
class PolicyControllerPolicyControllerDeploymentConfig {
  /// Container resource requirements.
  PolicyControllerResourceRequirements? containerResources;

  /// Pod affinity configuration.
  /// Possible string values are:
  /// - "AFFINITY_UNSPECIFIED" : No affinity configuration has been specified.
  /// - "NO_AFFINITY" : Affinity configurations will be removed from the
  /// deployment.
  /// - "ANTI_AFFINITY" : Anti-affinity configuration will be applied to this
  /// deployment. Default for admissions deployment.
  core.String? podAffinity;

  /// Pod anti-affinity enablement.
  ///
  /// Deprecated: use `pod_affinity` instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? podAntiAffinity;

  /// Pod tolerations of node taints.
  core.List<PolicyControllerToleration>? podTolerations;

  /// Pod replica count.
  core.String? replicaCount;

  PolicyControllerPolicyControllerDeploymentConfig({
    this.containerResources,
    this.podAffinity,
    this.podAntiAffinity,
    this.podTolerations,
    this.replicaCount,
  });

  PolicyControllerPolicyControllerDeploymentConfig.fromJson(core.Map json_)
      : this(
          containerResources: json_.containsKey('containerResources')
              ? PolicyControllerResourceRequirements.fromJson(
                  json_['containerResources']
                      as core.Map<core.String, core.dynamic>)
              : null,
          podAffinity: json_.containsKey('podAffinity')
              ? json_['podAffinity'] as core.String
              : null,
          podAntiAffinity: json_.containsKey('podAntiAffinity')
              ? json_['podAntiAffinity'] as core.bool
              : null,
          podTolerations: json_.containsKey('podTolerations')
              ? (json_['podTolerations'] as core.List)
                  .map((value) => PolicyControllerToleration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          replicaCount: json_.containsKey('replicaCount')
              ? json_['replicaCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerResources != null)
          'containerResources': containerResources!,
        if (podAffinity != null) 'podAffinity': podAffinity!,
        if (podAntiAffinity != null) 'podAntiAffinity': podAntiAffinity!,
        if (podTolerations != null) 'podTolerations': podTolerations!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
      };
}

/// ResourceList contains container resource requirements.
class PolicyControllerResourceList {
  /// CPU requirement expressed in Kubernetes resource units.
  core.String? cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  core.String? memory;

  PolicyControllerResourceList({
    this.cpu,
    this.memory,
  });

  PolicyControllerResourceList.fromJson(core.Map json_)
      : this(
          cpu: json_.containsKey('cpu') ? json_['cpu'] as core.String : null,
          memory: json_.containsKey('memory')
              ? json_['memory'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpu != null) 'cpu': cpu!,
        if (memory != null) 'memory': memory!,
      };
}

/// ResourceRequirements describes the compute resource requirements.
class PolicyControllerResourceRequirements {
  /// Limits describes the maximum amount of compute resources allowed for use
  /// by the running container.
  PolicyControllerResourceList? limits;

  /// Requests describes the amount of compute resources reserved for the
  /// container by the kube-scheduler.
  PolicyControllerResourceList? requests;

  PolicyControllerResourceRequirements({
    this.limits,
    this.requests,
  });

  PolicyControllerResourceRequirements.fromJson(core.Map json_)
      : this(
          limits: json_.containsKey('limits')
              ? PolicyControllerResourceList.fromJson(
                  json_['limits'] as core.Map<core.String, core.dynamic>)
              : null,
          requests: json_.containsKey('requests')
              ? PolicyControllerResourceList.fromJson(
                  json_['requests'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limits != null) 'limits': limits!,
        if (requests != null) 'requests': requests!,
      };
}

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfig {
  /// Configures the manner in which the template library is installed on the
  /// cluster.
  /// Possible string values are:
  /// - "INSTALLATION_UNSPECIFIED" : No installation strategy has been
  /// specified.
  /// - "NOT_INSTALLED" : Do not install the template library.
  /// - "ALL" : Install the entire template library.
  core.String? installation;

  PolicyControllerTemplateLibraryConfig({
    this.installation,
  });

  PolicyControllerTemplateLibraryConfig.fromJson(core.Map json_)
      : this(
          installation: json_.containsKey('installation')
              ? json_['installation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installation != null) 'installation': installation!,
      };
}

/// Toleration of a node taint.
class PolicyControllerToleration {
  /// Matches a taint effect.
  core.String? effect;

  /// Matches a taint key (not necessarily unique).
  core.String? key;

  /// Matches a taint operator.
  core.String? operator;

  /// Matches a taint value.
  core.String? value;

  PolicyControllerToleration({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  PolicyControllerToleration.fromJson(core.Map json_)
      : this(
          effect: json_.containsKey('effect')
              ? json_['effect'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effect != null) 'effect': effect!,
        if (key != null) 'key': key!,
        if (operator != null) 'operator': operator!,
        if (value != null) 'value': value!,
      };
}

/// RBACRoleBinding represents a rbacrolebinding across the Fleet
class RBACRoleBinding {
  /// When the rbacrolebinding was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the rbacrolebinding was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// group is the group, as seen by the kubernetes cluster.
  core.String? group;

  /// Labels for this RBACRolebinding.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for the rbacrolebinding
  /// `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}`
  /// or
  /// `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  core.String? name;

  /// Role to bind to the principal
  ///
  /// Required.
  Role? role;

  /// State of the rbacrolebinding resource.
  ///
  /// Output only.
  RBACRoleBindingLifecycleState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all rbacrolebinding resources. If a rbacrolebinding
  /// resource is deleted and another resource with the same name is created, it
  /// gets a different uid.
  ///
  /// Output only.
  core.String? uid;

  /// When the rbacrolebinding was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  core.String? user;

  RBACRoleBinding({
    this.createTime,
    this.deleteTime,
    this.group,
    this.labels,
    this.name,
    this.role,
    this.state,
    this.uid,
    this.updateTime,
    this.user,
  });

  RBACRoleBinding.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          role: json_.containsKey('role')
              ? Role.fromJson(
                  json_['role'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? RBACRoleBindingLifecycleState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (group != null) 'group': group!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (role != null) 'role': role!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (user != null) 'user': user!,
      };
}

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding
/// resource.
class RBACRoleBindingLifecycleState {
  /// The current state of the rbacrolebinding resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The rbacrolebinding is being created.
  /// - "READY" : The rbacrolebinding active.
  /// - "DELETING" : The rbacrolebinding is being deleted.
  /// - "UPDATING" : The rbacrolebinding is being updated.
  core.String? code;

  RBACRoleBindingLifecycleState({
    this.code,
  });

  RBACRoleBindingLifecycleState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
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

  ResourceManifest.fromJson(core.Map json_)
      : this(
          clusterScoped: json_.containsKey('clusterScoped')
              ? json_['clusterScoped'] as core.bool
              : null,
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
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

  ResourceOptions.fromJson(core.Map json_)
      : this(
          connectVersion: json_.containsKey('connectVersion')
              ? json_['connectVersion'] as core.String
              : null,
          k8sVersion: json_.containsKey('k8sVersion')
              ? json_['k8sVersion'] as core.String
              : null,
          v1beta1Crd: json_.containsKey('v1beta1Crd')
              ? json_['v1beta1Crd'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectVersion != null) 'connectVersion': connectVersion!,
        if (k8sVersion != null) 'k8sVersion': k8sVersion!,
        if (v1beta1Crd != null) 'v1beta1Crd': v1beta1Crd!,
      };
}

/// Role is the type for Kubernetes roles
class Role {
  /// predefined_role is the Kubernetes default role to use
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN
  /// - "ADMIN" : ADMIN has EDIT and RBAC permissions
  /// - "EDIT" : EDIT can edit all resources except RBAC
  /// - "VIEW" : VIEW can only read resources
  /// - "ANTHOS_SUPPORT" : ANTHOS_SUPPORT gives Google Support read-only access
  /// to a number of cluster resources.
  core.String? predefinedRole;

  Role({
    this.predefinedRole,
  });

  Role.fromJson(core.Map json_)
      : this(
          predefinedRole: json_.containsKey('predefinedRole')
              ? json_['predefinedRole'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (predefinedRole != null) 'predefinedRole': predefinedRole!,
      };
}

/// Scope represents a Scope in a Fleet.
class Scope {
  /// When the scope was created.
  ///
  /// Output only.
  core.String? createTime;

  /// When the scope was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Labels for this Scope.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name for the scope
  /// `projects/{project}/locations/{location}/scopes/{scope}`
  core.String? name;

  /// Scope-level cluster namespace labels.
  ///
  /// For the member clusters bound to the Scope, these labels are applied to
  /// each namespace under the Scope. Scope-level labels take precedence over
  /// Namespace-level labels (`namespace_labels` in the Fleet Namespace
  /// resource) if they share a key. Keys and values must be
  /// Kubernetes-conformant.
  ///
  /// Optional.
  core.Map<core.String, core.String>? namespaceLabels;

  /// State of the scope resource.
  ///
  /// Output only.
  ScopeLifecycleState? state;

  /// Google-generated UUID for this resource.
  ///
  /// This is unique across all scope resources. If a scope resource is deleted
  /// and another resource with the same name is created, it gets a different
  /// uid.
  ///
  /// Output only.
  core.String? uid;

  /// When the scope was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Scope({
    this.createTime,
    this.deleteTime,
    this.labels,
    this.name,
    this.namespaceLabels,
    this.state,
    this.uid,
    this.updateTime,
  });

  Scope.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namespaceLabels: json_.containsKey('namespaceLabels')
              ? (json_['namespaceLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          state: json_.containsKey('state')
              ? ScopeLifecycleState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (namespaceLabels != null) 'namespaceLabels': namespaceLabels!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ScopeFeatureSpec contains feature specs for a fleet scope.
typedef ScopeFeatureSpec = $Empty;

/// ScopeFeatureState contains Scope-wide Feature status information.
class ScopeFeatureState {
  /// The "running state" of the Feature in this Scope.
  ///
  /// Output only.
  FeatureState? state;

  ScopeFeatureState({
    this.state,
  });

  ScopeFeatureState.fromJson(core.Map json_)
      : this(
          state: json_.containsKey('state')
              ? FeatureState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// ScopeLifecycleState describes the state of a Scope resource.
class ScopeLifecycleState {
  /// The current state of the scope resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is not set.
  /// - "CREATING" : The scope is being created.
  /// - "READY" : The scope active.
  /// - "DELETING" : The scope is being deleted.
  /// - "UPDATING" : The scope is being updated.
  core.String? code;

  ScopeLifecycleState({
    this.code,
  });

  ScopeLifecycleState.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// SecurityPostureConfig defines the flags needed to enable/disable features
/// for the Security Posture API.
typedef SecurityPostureConfig = $SecurityPostureConfig;

/// Condition being reported.
class ServiceMeshCondition {
  /// Unique identifier of the condition which describes the condition
  /// recognizable to the user.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Default Unspecified code
  /// - "MESH_IAM_PERMISSION_DENIED" : Mesh IAM permission denied error code
  /// - "CNI_CONFIG_UNSUPPORTED" : CNI config unsupported error code
  /// - "GKE_SANDBOX_UNSUPPORTED" : GKE sandbox unsupported error code
  /// - "NODEPOOL_WORKLOAD_IDENTITY_FEDERATION_REQUIRED" : Nodepool workload
  /// identity federation required error code
  /// - "CNI_INSTALLATION_FAILED" : CNI installation failed error code
  /// - "CNI_POD_UNSCHEDULABLE" : CNI pod unschedulable error code
  /// - "UNSUPPORTED_MULTIPLE_CONTROL_PLANES" : Multiple control planes
  /// unsupported error code
  core.String? code;

  /// A short summary about the issue.
  core.String? details;

  /// Links contains actionable information.
  core.String? documentationLink;

  /// Severity level of the condition.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity
  /// - "ERROR" : Indicates an issue that prevents the mesh from operating
  /// correctly
  /// - "WARNING" : Indicates a setting is likely wrong, but the mesh is still
  /// able to operate
  /// - "INFO" : An informational message, not requiring any action
  core.String? severity;

  ServiceMeshCondition({
    this.code,
    this.details,
    this.documentationLink,
    this.severity,
  });

  ServiceMeshCondition.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          documentationLink: json_.containsKey('documentationLink')
              ? json_['documentationLink'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (documentationLink != null) 'documentationLink': documentationLink!,
        if (severity != null) 'severity': severity!,
      };
}

/// Status of control plane management.
class ServiceMeshControlPlaneManagement {
  /// Explanation of state.
  core.List<ServiceMeshStatusDetails>? details;

  /// LifecycleState of control plane management.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified
  /// - "DISABLED" : DISABLED means that the component is not enabled.
  /// - "FAILED_PRECONDITION" : FAILED_PRECONDITION means that provisioning
  /// cannot proceed because of some characteristic of the member cluster.
  /// - "PROVISIONING" : PROVISIONING means that provisioning is in progress.
  /// - "ACTIVE" : ACTIVE means that the component is ready for use.
  /// - "STALLED" : STALLED means that provisioning could not be done.
  /// - "NEEDS_ATTENTION" : NEEDS_ATTENTION means that the component is ready,
  /// but some user intervention is required. (For example that the user should
  /// migrate workloads to a new control plane revision.)
  /// - "DEGRADED" : DEGRADED means that the component is ready, but operating
  /// in a degraded state.
  core.String? state;

  ServiceMeshControlPlaneManagement({
    this.details,
    this.state,
  });

  ServiceMeshControlPlaneManagement.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => ServiceMeshStatusDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
      };
}

/// Status of data plane management.
///
/// Only reported per-member.
class ServiceMeshDataPlaneManagement {
  /// Explanation of the status.
  core.List<ServiceMeshStatusDetails>? details;

  /// Lifecycle status of data plane management.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified
  /// - "DISABLED" : DISABLED means that the component is not enabled.
  /// - "FAILED_PRECONDITION" : FAILED_PRECONDITION means that provisioning
  /// cannot proceed because of some characteristic of the member cluster.
  /// - "PROVISIONING" : PROVISIONING means that provisioning is in progress.
  /// - "ACTIVE" : ACTIVE means that the component is ready for use.
  /// - "STALLED" : STALLED means that provisioning could not be done.
  /// - "NEEDS_ATTENTION" : NEEDS_ATTENTION means that the component is ready,
  /// but some user intervention is required. (For example that the user should
  /// migrate workloads to a new control plane revision.)
  /// - "DEGRADED" : DEGRADED means that the component is ready, but operating
  /// in a degraded state.
  core.String? state;

  ServiceMeshDataPlaneManagement({
    this.details,
    this.state,
  });

  ServiceMeshDataPlaneManagement.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => ServiceMeshStatusDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (state != null) 'state': state!,
      };
}

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpec {
  /// Deprecated: use `management` instead Enables automatic control plane
  /// management.
  /// Possible string values are:
  /// - "CONTROL_PLANE_MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "AUTOMATIC" : Google should provision a control plane revision and make
  /// it available in the cluster. Google will enroll this revision in a release
  /// channel and keep it up to date. The control plane revision may be a
  /// managed service, or a managed install.
  /// - "MANUAL" : User will manually configure the control plane (e.g. via CLI,
  /// or via the ControlPlaneRevision KRM API)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? controlPlane;

  /// Enables automatic Service Mesh management.
  /// Possible string values are:
  /// - "MANAGEMENT_UNSPECIFIED" : Unspecified
  /// - "MANAGEMENT_AUTOMATIC" : Google should manage my Service Mesh for the
  /// cluster.
  /// - "MANAGEMENT_MANUAL" : User will manually configure their service mesh
  /// components.
  core.String? management;

  ServiceMeshMembershipSpec({
    this.controlPlane,
    this.management,
  });

  ServiceMeshMembershipSpec.fromJson(core.Map json_)
      : this(
          controlPlane: json_.containsKey('controlPlane')
              ? json_['controlPlane'] as core.String
              : null,
          management: json_.containsKey('management')
              ? json_['management'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlane != null) 'controlPlane': controlPlane!,
        if (management != null) 'management': management!,
      };
}

/// **Service Mesh**: State for a single Membership, as analyzed by the Service
/// Mesh Hub Controller.
class ServiceMeshMembershipState {
  /// List of condition reporting membership statues
  ///
  /// Output only.
  core.List<ServiceMeshCondition>? conditions;

  /// Status of control plane management
  ///
  /// Output only.
  ServiceMeshControlPlaneManagement? controlPlaneManagement;

  /// Status of data plane management.
  ///
  /// Output only.
  ServiceMeshDataPlaneManagement? dataPlaneManagement;

  ServiceMeshMembershipState({
    this.conditions,
    this.controlPlaneManagement,
    this.dataPlaneManagement,
  });

  ServiceMeshMembershipState.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => ServiceMeshCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          controlPlaneManagement: json_.containsKey('controlPlaneManagement')
              ? ServiceMeshControlPlaneManagement.fromJson(
                  json_['controlPlaneManagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataPlaneManagement: json_.containsKey('dataPlaneManagement')
              ? ServiceMeshDataPlaneManagement.fromJson(
                  json_['dataPlaneManagement']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (controlPlaneManagement != null)
          'controlPlaneManagement': controlPlaneManagement!,
        if (dataPlaneManagement != null)
          'dataPlaneManagement': dataPlaneManagement!,
      };
}

/// Structured and human-readable details for a status.
class ServiceMeshStatusDetails {
  /// A machine-readable code that further describes a broad status.
  core.String? code;

  /// Human-readable explanation of code.
  core.String? details;

  ServiceMeshStatusDetails({
    this.code,
    this.details,
  });

  ServiceMeshStatusDetails.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
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

  Status.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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

  TypeMeta.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
      };
}
