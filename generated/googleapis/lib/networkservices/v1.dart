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

/// Network Services API - v1
///
/// For more information, see <https://cloud.google.com/networking>
///
/// Create an instance of [NetworkServicesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEdgeCacheKeysetsResource]
///     - [ProjectsLocationsEdgeCacheOriginsResource]
///     - [ProjectsLocationsEdgeCacheServicesResource]
///     - [ProjectsLocationsEndpointPoliciesResource]
///     - [ProjectsLocationsGatewaysResource]
///     - [ProjectsLocationsGrpcRoutesResource]
///     - [ProjectsLocationsHttpRoutesResource]
///     - [ProjectsLocationsLbRouteExtensionsResource]
///     - [ProjectsLocationsLbTrafficExtensionsResource]
///     - [ProjectsLocationsMeshesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServiceBindingsResource]
///     - [ProjectsLocationsServiceLbPoliciesResource]
///     - [ProjectsLocationsTcpRoutesResource]
///     - [ProjectsLocationsTlsRoutesResource]
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

class NetworkServicesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  NetworkServicesApi(http.Client client,
      {core.String rootUrl = 'https://networkservices.googleapis.com/',
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

  ProjectsLocationsEdgeCacheKeysetsResource get edgeCacheKeysets =>
      ProjectsLocationsEdgeCacheKeysetsResource(_requester);
  ProjectsLocationsEdgeCacheOriginsResource get edgeCacheOrigins =>
      ProjectsLocationsEdgeCacheOriginsResource(_requester);
  ProjectsLocationsEdgeCacheServicesResource get edgeCacheServices =>
      ProjectsLocationsEdgeCacheServicesResource(_requester);
  ProjectsLocationsEndpointPoliciesResource get endpointPolicies =>
      ProjectsLocationsEndpointPoliciesResource(_requester);
  ProjectsLocationsGatewaysResource get gateways =>
      ProjectsLocationsGatewaysResource(_requester);
  ProjectsLocationsGrpcRoutesResource get grpcRoutes =>
      ProjectsLocationsGrpcRoutesResource(_requester);
  ProjectsLocationsHttpRoutesResource get httpRoutes =>
      ProjectsLocationsHttpRoutesResource(_requester);
  ProjectsLocationsLbRouteExtensionsResource get lbRouteExtensions =>
      ProjectsLocationsLbRouteExtensionsResource(_requester);
  ProjectsLocationsLbTrafficExtensionsResource get lbTrafficExtensions =>
      ProjectsLocationsLbTrafficExtensionsResource(_requester);
  ProjectsLocationsMeshesResource get meshes =>
      ProjectsLocationsMeshesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServiceBindingsResource get serviceBindings =>
      ProjectsLocationsServiceBindingsResource(_requester);
  ProjectsLocationsServiceLbPoliciesResource get serviceLbPolicies =>
      ProjectsLocationsServiceLbPoliciesResource(_requester);
  ProjectsLocationsTcpRoutesResource get tcpRoutes =>
      ProjectsLocationsTcpRoutesResource(_requester);
  ProjectsLocationsTlsRoutesResource get tlsRoutes =>
      ProjectsLocationsTlsRoutesResource(_requester);

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

class ProjectsLocationsEdgeCacheKeysetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEdgeCacheKeysetsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheKeysets/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheKeysets/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheKeysets/\[^/\]+$`.
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

class ProjectsLocationsEdgeCacheOriginsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEdgeCacheOriginsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheOrigins/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheOrigins/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheOrigins/\[^/\]+$`.
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

class ProjectsLocationsEdgeCacheServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEdgeCacheServicesResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheServices/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheServices/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/edgeCacheServices/\[^/\]+$`.
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

class ProjectsLocationsEndpointPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEndpointPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new EndpointPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the EndpointPolicy. Must be in
  /// the format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [endpointPolicyId] - Required. Short name of the EndpointPolicy resource
  /// to be created. E.g. "CustomECS".
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
    EndpointPolicy request,
    core.String parent, {
    core.String? endpointPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endpointPolicyId != null) 'endpointPolicyId': [endpointPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single EndpointPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the EndpointPolicy to delete. Must be in the
  /// format `projects / * /locations/global/endpointPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
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

  /// Gets details of a single EndpointPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the EndpointPolicy to get. Must be in the
  /// format `projects / * /locations/global/endpointPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EndpointPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EndpointPolicy> get(
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
    return EndpointPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
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

  /// Lists EndpointPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// EndpointPolicies should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of EndpointPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListEndpointPoliciesResponse` Indicates that this is a continuation of a
  /// prior `ListEndpointPolicies` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEndpointPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEndpointPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndpointPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single EndpointPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the EndpointPolicy resource. It matches pattern
  /// `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the EndpointPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    EndpointPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointPolicies/\[^/\]+$`.
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

class ProjectsLocationsGatewaysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGatewaysResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Gateway in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Gateway. Must be in the
  /// format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [gatewayId] - Required. Short name of the Gateway resource to be created.
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
    Gateway request,
    core.String parent, {
    core.String? gatewayId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gatewayId != null) 'gatewayId': [gatewayId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gateways';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Gateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the Gateway to delete. Must be in the format
  /// `projects / * /locations / * /gateways / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
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

  /// Gets details of a single Gateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the Gateway to get. Must be in the format
  /// `projects / * /locations / * /gateways / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Gateway].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Gateway> get(
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
    return Gateway.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
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

  /// Lists Gateways in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the Gateways
  /// should be listed, specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Gateways to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListGatewaysResponse`
  /// Indicates that this is a continuation of a prior `ListGateways` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGatewaysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGatewaysResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/gateways';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGatewaysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Gateway.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Gateway resource. It matches pattern
  /// `projects / * /locations / * /gateways/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Gateway resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    Gateway request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
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

class ProjectsLocationsGrpcRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGrpcRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new GrpcRoute in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the GrpcRoute. Must be in the
  /// format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [grpcRouteId] - Required. Short name of the GrpcRoute resource to be
  /// created.
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
    GrpcRoute request,
    core.String parent, {
    core.String? grpcRouteId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (grpcRouteId != null) 'grpcRouteId': [grpcRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GrpcRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the GrpcRoute to delete. Must be in the
  /// format `projects / * /locations/global/grpcRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/grpcRoutes/\[^/\]+$`.
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

  /// Gets details of a single GrpcRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the GrpcRoute to get. Must be in the format
  /// `projects / * /locations/global/grpcRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/grpcRoutes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GrpcRoute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GrpcRoute> get(
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
    return GrpcRoute.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists GrpcRoutes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the GrpcRoutes
  /// should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of GrpcRoutes to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListGrpcRoutesResponse`
  /// Indicates that this is a continuation of a prior `ListGrpcRoutes` call,
  /// and that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGrpcRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGrpcRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGrpcRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single GrpcRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the GrpcRoute resource. It matches pattern
  /// `projects / * /locations/global/grpcRoutes/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/grpcRoutes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the GrpcRoute resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    GrpcRoute request,
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

class ProjectsLocationsHttpRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsHttpRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new HttpRoute in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the HttpRoute. Must be in the
  /// format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [httpRouteId] - Required. Short name of the HttpRoute resource to be
  /// created.
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
    HttpRoute request,
    core.String parent, {
    core.String? httpRouteId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (httpRouteId != null) 'httpRouteId': [httpRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single HttpRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the HttpRoute to delete. Must be in the
  /// format `projects / * /locations/global/httpRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/httpRoutes/\[^/\]+$`.
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

  /// Gets details of a single HttpRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the HttpRoute to get. Must be in the format
  /// `projects / * /locations/global/httpRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/httpRoutes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpRoute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpRoute> get(
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
    return HttpRoute.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists HttpRoute in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the HttpRoutes
  /// should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of HttpRoutes to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListHttpRoutesResponse`
  /// Indicates that this is a continuation of a prior `ListHttpRoutes` call,
  /// and that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHttpRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHttpRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHttpRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single HttpRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the HttpRoute resource. It matches pattern
  /// `projects / * /locations/global/httpRoutes/http_route_name>`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/httpRoutes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the HttpRoute resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    HttpRoute request,
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

class ProjectsLocationsLbRouteExtensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLbRouteExtensionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `LbRouteExtension` resource in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `LbRouteExtension`
  /// resource. Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [lbRouteExtensionId] - Required. User-provided ID of the
  /// `LbRouteExtension` resource to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
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
    LbRouteExtension request,
    core.String parent, {
    core.String? lbRouteExtensionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (lbRouteExtensionId != null)
        'lbRouteExtensionId': [lbRouteExtensionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lbRouteExtensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `LbRouteExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `LbRouteExtension` resource to delete.
  /// Must be in the format
  /// `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbRouteExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets details of the specified `LbRouteExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `LbRouteExtension` resource to get. Must
  /// be in the format
  /// `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbRouteExtensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LbRouteExtension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LbRouteExtension> get(
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
    return LbRouteExtension.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `LbRouteExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `LbRouteExtension` resources are listed, specified in the following
  /// format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. The server might return fewer
  /// items than requested. If unspecified, the server picks an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results that the
  /// server returns.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLbRouteExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLbRouteExtensionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/lbRouteExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLbRouteExtensionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of the specified `LbRouteExtension` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Name of the `LbRouteExtension` resource in
  /// the following format:
  /// `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbRouteExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Used to specify the fields to be overwritten in
  /// the `LbRouteExtension` resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field is
  /// overwritten if it is in the mask. If the user does not specify a mask,
  /// then all fields are overwritten.
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
    LbRouteExtension request,
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
}

class ProjectsLocationsLbTrafficExtensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLbTrafficExtensionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new `LbTrafficExtension` resource in a given project and
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `LbTrafficExtension`
  /// resource. Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [lbTrafficExtensionId] - Required. User-provided ID of the
  /// `LbTrafficExtension` resource to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
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
    LbTrafficExtension request,
    core.String parent, {
    core.String? lbTrafficExtensionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (lbTrafficExtensionId != null)
        'lbTrafficExtensionId': [lbTrafficExtensionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/lbTrafficExtensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `LbTrafficExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `LbTrafficExtension` resource to
  /// delete. Must be in the format
  /// `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbTrafficExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets details of the specified `LbTrafficExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `LbTrafficExtension` resource to get.
  /// Must be in the format
  /// `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbTrafficExtensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LbTrafficExtension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LbTrafficExtension> get(
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
    return LbTrafficExtension.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `LbTrafficExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `LbTrafficExtension` resources are listed, specified in the following
  /// format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. The server might return fewer
  /// items than requested. If unspecified, the server picks an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results that the
  /// server returns.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLbTrafficExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLbTrafficExtensionsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/lbTrafficExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLbTrafficExtensionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of the specified `LbTrafficExtension` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Name of the `LbTrafficExtension` resource
  /// in the following format:
  /// `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbTrafficExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Used to specify the fields to be overwritten in
  /// the `LbTrafficExtension` resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field is overwritten if it is in the mask. If the user does not specify a
  /// mask, then all fields are overwritten.
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
    LbTrafficExtension request,
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
}

class ProjectsLocationsMeshesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMeshesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Mesh in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Mesh. Must be in the
  /// format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [meshId] - Required. Short name of the Mesh resource to be created.
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
    Mesh request,
    core.String parent, {
    core.String? meshId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (meshId != null) 'meshId': [meshId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/meshes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Mesh.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the Mesh to delete. Must be in the format
  /// `projects / * /locations/global/meshes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
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

  /// Gets details of a single Mesh.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the Mesh to get. Must be in the format
  /// `projects / * /locations/global/meshes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Mesh].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Mesh> get(
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
    return Mesh.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
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

  /// Lists Meshes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the Meshes should
  /// be listed, specified in the format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Meshes to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListMeshesResponse`
  /// Indicates that this is a continuation of a prior `ListMeshes` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMeshesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMeshesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/meshes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMeshesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Mesh.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Mesh resource. It matches pattern `projects
  /// / * /locations/global/meshes/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Mesh resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    Mesh request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
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

class ProjectsLocationsServiceBindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceBindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ServiceBinding in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the ServiceBinding. Must be in
  /// the format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [serviceBindingId] - Required. Short name of the ServiceBinding resource
  /// to be created.
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
    ServiceBinding request,
    core.String parent, {
    core.String? serviceBindingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (serviceBindingId != null) 'serviceBindingId': [serviceBindingId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServiceBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServiceBinding to delete. Must be in the
  /// format `projects / * /locations/global/serviceBindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
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

  /// Gets details of a single ServiceBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServiceBinding to get. Must be in the
  /// format `projects / * /locations/global/serviceBindings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceBinding> get(
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
    return ServiceBinding.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
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

  /// Lists ServiceBinding in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// ServiceBindings should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of ServiceBindings to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListServiceBindingsResponse`
  /// Indicates that this is a continuation of a prior `ListRouters` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceBindingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceBindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
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

class ProjectsLocationsServiceLbPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceLbPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ServiceLbPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the ServiceLbPolicy. Must be
  /// in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [serviceLbPolicyId] - Required. Short name of the ServiceLbPolicy resource
  /// to be created. E.g. for resource name
  /// `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// the id is value of {service_lb_policy_name}
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
    ServiceLbPolicy request,
    core.String parent, {
    core.String? serviceLbPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (serviceLbPolicyId != null) 'serviceLbPolicyId': [serviceLbPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceLbPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServiceLbPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServiceLbPolicy to delete. Must be in the
  /// format `projects/{project}/locations/{location}/serviceLbPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
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

  /// Gets details of a single ServiceLbPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServiceLbPolicy to get. Must be in the
  /// format `projects/{project}/locations/{location}/serviceLbPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceLbPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceLbPolicy> get(
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
    return ServiceLbPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
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

  /// Lists ServiceLbPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// ServiceLbPolicies should be listed, specified in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of ServiceLbPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListServiceLbPoliciesResponse` Indicates that this is a continuation of a
  /// prior `ListRouters` call, and that the system should return the next page
  /// of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceLbPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceLbPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceLbPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceLbPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single ServiceLbPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServiceLbPolicy resource. It matches
  /// pattern
  /// `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServiceLbPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    ServiceLbPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceLbPolicies/\[^/\]+$`.
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

class ProjectsLocationsTcpRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTcpRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new TcpRoute in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the TcpRoute. Must be in the
  /// format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [tcpRouteId] - Required. Short name of the TcpRoute resource to be
  /// created.
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
    TcpRoute request,
    core.String parent, {
    core.String? tcpRouteId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tcpRouteId != null) 'tcpRouteId': [tcpRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single TcpRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TcpRoute to delete. Must be in the format
  /// `projects / * /locations/global/tcpRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tcpRoutes/\[^/\]+$`.
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

  /// Gets details of a single TcpRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TcpRoute to get. Must be in the format
  /// `projects / * /locations/global/tcpRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tcpRoutes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TcpRoute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TcpRoute> get(
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
    return TcpRoute.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists TcpRoute in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the TcpRoutes
  /// should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of TcpRoutes to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListTcpRoutesResponse`
  /// Indicates that this is a continuation of a prior `ListTcpRoutes` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTcpRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTcpRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTcpRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single TcpRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the TcpRoute resource. It matches pattern
  /// `projects / * /locations/global/tcpRoutes/tcp_route_name>`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tcpRoutes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the TcpRoute resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    TcpRoute request,
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

class ProjectsLocationsTlsRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTlsRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new TlsRoute in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the TlsRoute. Must be in the
  /// format `projects / * /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [tlsRouteId] - Required. Short name of the TlsRoute resource to be
  /// created.
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
    TlsRoute request,
    core.String parent, {
    core.String? tlsRouteId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tlsRouteId != null) 'tlsRouteId': [tlsRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single TlsRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TlsRoute to delete. Must be in the format
  /// `projects / * /locations/global/tlsRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsRoutes/\[^/\]+$`.
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

  /// Gets details of a single TlsRoute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TlsRoute to get. Must be in the format
  /// `projects / * /locations/global/tlsRoutes / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsRoutes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TlsRoute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TlsRoute> get(
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
    return TlsRoute.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists TlsRoute in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the TlsRoutes
  /// should be listed, specified in the format `projects / *
  /// /locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of TlsRoutes to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListTlsRoutesResponse`
  /// Indicates that this is a continuation of a prior `ListTlsRoutes` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTlsRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTlsRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTlsRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single TlsRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the TlsRoute resource. It matches pattern
  /// `projects / * /locations/global/tlsRoutes/tls_route_name>`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsRoutes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the TlsRoute resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    TlsRoute request,
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A definition of a matcher that selects endpoints to which the policies
/// should be applied.
class EndpointMatcher {
  /// The matcher is based on node metadata presented by xDS clients.
  EndpointMatcherMetadataLabelMatcher? metadataLabelMatcher;

  EndpointMatcher({
    this.metadataLabelMatcher,
  });

  EndpointMatcher.fromJson(core.Map json_)
      : this(
          metadataLabelMatcher: json_.containsKey('metadataLabelMatcher')
              ? EndpointMatcherMetadataLabelMatcher.fromJson(
                  json_['metadataLabelMatcher']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataLabelMatcher != null)
          'metadataLabelMatcher': metadataLabelMatcher!,
      };
}

/// The matcher that is based on node metadata presented by xDS clients.
class EndpointMatcherMetadataLabelMatcher {
  /// Specifies how matching should be done.
  ///
  /// Supported values are: MATCH_ANY: At least one of the Labels specified in
  /// the matcher should match the metadata presented by xDS client. MATCH_ALL:
  /// The metadata presented by the xDS client should contain all of the labels
  /// specified here. The selection is determined based on the best match. For
  /// example, suppose there are three EndpointPolicy resources P1, P2 and P3
  /// and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has
  /// MATCH_ALL . If a client with label connects, the config from P1 will be
  /// selected. If a client with label connects, the config from P2 will be
  /// selected. If a client with label connects, the config from P3 will be
  /// selected. If there is more than one best match, (for example, if a config
  /// P4 with selector exists and if a client with label connects), pick up the
  /// one with older creation time.
  /// Possible string values are:
  /// - "METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED" : Default value. Should not
  /// be used.
  /// - "MATCH_ANY" : At least one of the Labels specified in the matcher should
  /// match the metadata presented by xDS client.
  /// - "MATCH_ALL" : The metadata presented by the xDS client should contain
  /// all of the labels specified here.
  core.String? metadataLabelMatchCriteria;

  /// The list of label value pairs that must match labels in the provided
  /// metadata based on filterMatchCriteria This list can have at most 64
  /// entries.
  ///
  /// The list can be empty if the match criteria is MATCH_ANY, to specify a
  /// wildcard match (i.e this matches any client).
  core.List<EndpointMatcherMetadataLabelMatcherMetadataLabels>? metadataLabels;

  EndpointMatcherMetadataLabelMatcher({
    this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  EndpointMatcherMetadataLabelMatcher.fromJson(core.Map json_)
      : this(
          metadataLabelMatchCriteria:
              json_.containsKey('metadataLabelMatchCriteria')
                  ? json_['metadataLabelMatchCriteria'] as core.String
                  : null,
          metadataLabels: json_.containsKey('metadataLabels')
              ? (json_['metadataLabels'] as core.List)
                  .map((value) =>
                      EndpointMatcherMetadataLabelMatcherMetadataLabels
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataLabelMatchCriteria != null)
          'metadataLabelMatchCriteria': metadataLabelMatchCriteria!,
        if (metadataLabels != null) 'metadataLabels': metadataLabels!,
      };
}

/// Defines a name-pair value for a single label.
class EndpointMatcherMetadataLabelMatcherMetadataLabels {
  /// Label name presented as key in xDS Node Metadata.
  ///
  /// Required.
  core.String? labelName;

  /// Label value presented as value corresponding to the above key, in xDS Node
  /// Metadata.
  ///
  /// Required.
  core.String? labelValue;

  EndpointMatcherMetadataLabelMatcherMetadataLabels({
    this.labelName,
    this.labelValue,
  });

  EndpointMatcherMetadataLabelMatcherMetadataLabels.fromJson(core.Map json_)
      : this(
          labelName: json_.containsKey('labelName')
              ? json_['labelName'] as core.String
              : null,
          labelValue: json_.containsKey('labelValue')
              ? json_['labelValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelName != null) 'labelName': labelName!,
        if (labelValue != null) 'labelValue': labelValue!,
      };
}

/// EndpointPolicy is a resource that helps apply desired configuration on the
/// endpoints that match specific criteria.
///
/// For example, this resource can be used to apply "authentication config" an
/// all endpoints that serve on port 8080.
class EndpointPolicy {
  /// This field specifies the URL of AuthorizationPolicy resource that applies
  /// authorization policies to the inbound traffic at the matched endpoints.
  ///
  /// Refer to Authorization. If this field is not specified, authorization is
  /// disabled(no authz checks) for this endpoint.
  ///
  /// Optional.
  core.String? authorizationPolicy;

  /// A URL referring to a ClientTlsPolicy resource.
  ///
  /// ClientTlsPolicy can be set to specify the authentication for traffic from
  /// the proxy to the actual endpoints. More specifically, it is applied to the
  /// outgoing traffic from the proxy to the endpoint. This is typically used
  /// for sidecar model where the proxy identifies itself as endpoint to the
  /// control plane, with the connection between sidecar and endpoint requiring
  /// authentication. If this field is not set, authentication is
  /// disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  ///
  /// Optional.
  core.String? clientTlsPolicy;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// A matcher that selects endpoints to which the policies should be applied.
  ///
  /// Required.
  EndpointMatcher? endpointMatcher;

  /// Set of label tags associated with the EndpointPolicy resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the EndpointPolicy resource.
  ///
  /// It matches pattern
  /// `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  ///
  /// Required.
  core.String? name;

  /// A URL referring to ServerTlsPolicy resource.
  ///
  /// ServerTlsPolicy is used to determine the authentication policy to be
  /// applied to terminate the inbound traffic at the identified backends. If
  /// this field is not set, authentication is disabled(open) for this endpoint.
  ///
  /// Optional.
  core.String? serverTlsPolicy;

  /// Port selector for the (matched) endpoints.
  ///
  /// If no port selector is provided, the matched config is applied to all
  /// ports.
  ///
  /// Optional.
  TrafficPortSelector? trafficPortSelector;

  /// The type of endpoint policy.
  ///
  /// This is primarily used to validate the configuration.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENDPOINT_POLICY_TYPE_UNSPECIFIED" : Default value. Must not be used.
  /// - "SIDECAR_PROXY" : Represents a proxy deployed as a sidecar.
  /// - "GRPC_SERVER" : Represents a proxyless gRPC backend.
  core.String? type;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  EndpointPolicy({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.createTime,
    this.description,
    this.endpointMatcher,
    this.labels,
    this.name,
    this.serverTlsPolicy,
    this.trafficPortSelector,
    this.type,
    this.updateTime,
  });

  EndpointPolicy.fromJson(core.Map json_)
      : this(
          authorizationPolicy: json_.containsKey('authorizationPolicy')
              ? json_['authorizationPolicy'] as core.String
              : null,
          clientTlsPolicy: json_.containsKey('clientTlsPolicy')
              ? json_['clientTlsPolicy'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endpointMatcher: json_.containsKey('endpointMatcher')
              ? EndpointMatcher.fromJson(json_['endpointMatcher']
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serverTlsPolicy: json_.containsKey('serverTlsPolicy')
              ? json_['serverTlsPolicy'] as core.String
              : null,
          trafficPortSelector: json_.containsKey('trafficPortSelector')
              ? TrafficPortSelector.fromJson(json_['trafficPortSelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizationPolicy != null)
          'authorizationPolicy': authorizationPolicy!,
        if (clientTlsPolicy != null) 'clientTlsPolicy': clientTlsPolicy!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (endpointMatcher != null) 'endpointMatcher': endpointMatcher!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serverTlsPolicy != null) 'serverTlsPolicy': serverTlsPolicy!,
        if (trafficPortSelector != null)
          'trafficPortSelector': trafficPortSelector!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
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

/// A single extension chain wrapper that contains the match conditions and
/// extensions to execute.
class ExtensionChain {
  /// A set of extensions to execute for the matching request.
  ///
  /// At least one extension is required. Up to 3 extensions can be defined for
  /// each extension chain for `LbTrafficExtension` resource. `LbRouteExtension`
  /// chains are limited to 1 extension per extension chain.
  ///
  /// Required.
  core.List<ExtensionChainExtension>? extensions;

  /// Conditions under which this chain is invoked for a request.
  ///
  /// Required.
  ExtensionChainMatchCondition? matchCondition;

  /// The name for this extension chain.
  ///
  /// The name is logged as part of the HTTP request logs. The name must conform
  /// with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first
  /// character must be a letter and the last a letter or a number.
  ///
  /// Required.
  core.String? name;

  ExtensionChain({
    this.extensions,
    this.matchCondition,
    this.name,
  });

  ExtensionChain.fromJson(core.Map json_)
      : this(
          extensions: json_.containsKey('extensions')
              ? (json_['extensions'] as core.List)
                  .map((value) => ExtensionChainExtension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchCondition: json_.containsKey('matchCondition')
              ? ExtensionChainMatchCondition.fromJson(json_['matchCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensions != null) 'extensions': extensions!,
        if (matchCondition != null) 'matchCondition': matchCondition!,
        if (name != null) 'name': name!,
      };
}

/// A single extension in the chain to execute for the matching request.
class ExtensionChainExtension {
  /// The `:authority` header in the gRPC request sent from Envoy to the
  /// extension service.
  ///
  /// Required for Callout extensions.
  ///
  /// Optional.
  core.String? authority;

  /// Determines how the proxy behaves if the call to the extension fails or
  /// times out.
  ///
  /// When set to `TRUE`, request or response processing continues without
  /// error. Any subsequent extensions in the extension chain are also executed.
  /// When set to `FALSE` or the default setting of `FALSE` is used, one of the
  /// following happens: * If response headers have not been delivered to the
  /// downstream client, a generic 500 error is returned to the client. The
  /// error response can be tailored by configuring a custom error response in
  /// the load balancer. * If response headers have been delivered, then the
  /// HTTP stream to the downstream client is reset.
  ///
  /// Optional.
  core.bool? failOpen;

  /// List of the HTTP headers to forward to the extension (from the client or
  /// backend).
  ///
  /// If omitted, all headers are sent. Each element is a string indicating the
  /// header name.
  ///
  /// Optional.
  core.List<core.String>? forwardHeaders;

  /// The name for this extension.
  ///
  /// The name is logged as part of the HTTP request logs. The name must conform
  /// with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first
  /// character must be a letter and the last a letter or a number.
  ///
  /// Required.
  core.String? name;

  /// The reference to the service that runs the extension.
  ///
  /// Currently only callout extensions are supported here. To configure a
  /// callout extension, `service` must be a fully-qualified reference to a
  /// [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)
  /// in the format:
  /// `https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`
  /// or
  /// `https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}`.
  ///
  /// Required.
  core.String? service;

  /// A set of events during request or response processing for which this
  /// extension is called.
  ///
  /// This field is required for the `LbTrafficExtension` resource. It's not
  /// relevant for the `LbRouteExtension` resource.
  ///
  /// Optional.
  core.List<core.String>? supportedEvents;

  /// Specifies the timeout for each individual message on the stream.
  ///
  /// The timeout must be between 10-1000 milliseconds. Required for Callout
  /// extensions.
  ///
  /// Optional.
  core.String? timeout;

  ExtensionChainExtension({
    this.authority,
    this.failOpen,
    this.forwardHeaders,
    this.name,
    this.service,
    this.supportedEvents,
    this.timeout,
  });

  ExtensionChainExtension.fromJson(core.Map json_)
      : this(
          authority: json_.containsKey('authority')
              ? json_['authority'] as core.String
              : null,
          failOpen: json_.containsKey('failOpen')
              ? json_['failOpen'] as core.bool
              : null,
          forwardHeaders: json_.containsKey('forwardHeaders')
              ? (json_['forwardHeaders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          supportedEvents: json_.containsKey('supportedEvents')
              ? (json_['supportedEvents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authority != null) 'authority': authority!,
        if (failOpen != null) 'failOpen': failOpen!,
        if (forwardHeaders != null) 'forwardHeaders': forwardHeaders!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (supportedEvents != null) 'supportedEvents': supportedEvents!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Conditions under which this chain is invoked for a request.
class ExtensionChainMatchCondition {
  /// A Common Expression Language (CEL) expression that is used to match
  /// requests for which the extension chain is executed.
  ///
  /// For more information, see
  /// [CEL matcher language reference](https://cloud.google.com/service-extensions/docs/cel-matcher-language-reference).
  ///
  /// Required.
  core.String? celExpression;

  ExtensionChainMatchCondition({
    this.celExpression,
  });

  ExtensionChainMatchCondition.fromJson(core.Map json_)
      : this(
          celExpression: json_.containsKey('celExpression')
              ? json_['celExpression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (celExpression != null) 'celExpression': celExpression!,
      };
}

/// Gateway represents the configuration for a proxy, typically a load balancer.
///
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway. Next id: 32
class Gateway {
  /// Zero or one IPv4 or IPv6 address on which the Gateway will receive the
  /// traffic.
  ///
  /// When no address is provided, an IP from the subnetwork is allocated This
  /// field only applies to gateways of type 'SECURE_WEB_GATEWAY'. Gateways of
  /// type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  ///
  /// Optional.
  core.List<core.String>? addresses;

  /// A fully-qualified Certificates URL reference.
  ///
  /// The proxy presents a Certificate (selected based on SNI) when establishing
  /// a TLS connection. This feature only applies to gateways of type
  /// 'SECURE_WEB_GATEWAY'.
  ///
  /// Optional.
  core.List<core.String>? certificateUrls;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Determines if envoy will insert internal debug headers into upstream
  /// requests.
  ///
  /// Other Envoy headers may still be injected. By default, envoy will not
  /// insert any debug headers.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENVOY_HEADERS_UNSPECIFIED" : Defaults to NONE.
  /// - "NONE" : Suppress envoy debug headers.
  /// - "DEBUG_HEADERS" : Envoy will insert default internal debug headers into
  /// upstream requests: x-envoy-attempt-count x-envoy-is-timeout-retry
  /// x-envoy-expected-rq-timeout-ms x-envoy-original-path
  /// x-envoy-upstream-stream-duration-ms
  core.String? envoyHeaders;

  /// A fully-qualified GatewaySecurityPolicy URL reference.
  ///
  /// Defines how a server should apply security policy to inbound (VM to Proxy)
  /// initiated connections. For example: `projects / * /locations / *
  /// /gatewaySecurityPolicies/swg-policy`. This policy is specific to gateways
  /// of type 'SECURE_WEB_GATEWAY'.
  ///
  /// Optional.
  core.String? gatewaySecurityPolicy;

  /// The IP Version that will be used by this gateway.
  ///
  /// Valid options are IPV4 or IPV6. Default is IPV4.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "IP_VERSION_UNSPECIFIED" : The type when IP version is not specified.
  /// Defaults to IPV4.
  /// - "IPV4" : The type for IP version 4.
  /// - "IPV6" : The type for IP version 6.
  core.String? ipVersion;

  /// Set of label tags associated with the Gateway resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the Gateway resource.
  ///
  /// It matches pattern `projects / * /locations / * /gateways/`.
  ///
  /// Required.
  core.String? name;

  /// The relative resource name identifying the VPC network that is using this
  /// configuration.
  ///
  /// For example: `projects / * /global/networks/network-1`. Currently, this
  /// field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  ///
  /// Optional.
  core.String? network;

  /// One or more port numbers (1-65535), on which the Gateway will receive
  /// traffic.
  ///
  /// The proxy binds to the specified ports. Gateways of type
  /// 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH'
  /// listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  ///
  /// Required.
  core.List<core.int>? ports;

  /// Scope determines how configuration across multiple Gateway instances are
  /// merged.
  ///
  /// The configuration for multiple Gateway instances with the same scope will
  /// be merged as presented as a single coniguration to the proxy/load
  /// balancer. Max length 64 characters. Scope should start with a letter and
  /// can only have letters, numbers, hyphens.
  ///
  /// Optional.
  core.String? scope;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// A fully-qualified ServerTLSPolicy URL reference.
  ///
  /// Specifies how TLS traffic is terminated. If empty, TLS termination is
  /// disabled.
  ///
  /// Optional.
  core.String? serverTlsPolicy;

  /// The relative resource name identifying the subnetwork in which this SWG is
  /// allocated.
  ///
  /// For example: `projects / * /regions/us-central1/subnetworks/network-1`
  /// Currently, this field is specific to gateways of type
  /// 'SECURE_WEB_GATEWAY".
  ///
  /// Optional.
  core.String? subnetwork;

  /// The type of the customer managed gateway.
  ///
  /// This field is required. If unspecified, an error is returned.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the customer managed gateway is
  /// unspecified.
  /// - "OPEN_MESH" : The type of the customer managed gateway is
  /// TrafficDirector Open Mesh.
  /// - "SECURE_WEB_GATEWAY" : The type of the customer managed gateway is
  /// SecureWebGateway (SWG).
  core.String? type;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Gateway({
    this.addresses,
    this.certificateUrls,
    this.createTime,
    this.description,
    this.envoyHeaders,
    this.gatewaySecurityPolicy,
    this.ipVersion,
    this.labels,
    this.name,
    this.network,
    this.ports,
    this.scope,
    this.selfLink,
    this.serverTlsPolicy,
    this.subnetwork,
    this.type,
    this.updateTime,
  });

  Gateway.fromJson(core.Map json_)
      : this(
          addresses: json_.containsKey('addresses')
              ? (json_['addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          certificateUrls: json_.containsKey('certificateUrls')
              ? (json_['certificateUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          envoyHeaders: json_.containsKey('envoyHeaders')
              ? json_['envoyHeaders'] as core.String
              : null,
          gatewaySecurityPolicy: json_.containsKey('gatewaySecurityPolicy')
              ? json_['gatewaySecurityPolicy'] as core.String
              : null,
          ipVersion: json_.containsKey('ipVersion')
              ? json_['ipVersion'] as core.String
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
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          ports: json_.containsKey('ports')
              ? (json_['ports'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          serverTlsPolicy: json_.containsKey('serverTlsPolicy')
              ? json_['serverTlsPolicy'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (certificateUrls != null) 'certificateUrls': certificateUrls!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (envoyHeaders != null) 'envoyHeaders': envoyHeaders!,
        if (gatewaySecurityPolicy != null)
          'gatewaySecurityPolicy': gatewaySecurityPolicy!,
        if (ipVersion != null) 'ipVersion': ipVersion!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (ports != null) 'ports': ports!,
        if (scope != null) 'scope': scope!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (serverTlsPolicy != null) 'serverTlsPolicy': serverTlsPolicy!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or
/// Gateway resource is routed.
class GrpcRoute {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Gateways defines a list of gateways this GrpcRoute is attached to, as one
  /// of the routing rules to route the requests served by the gateway.
  ///
  /// Each gateway reference should match the pattern: `projects / *
  /// /locations/global/gateways/`
  ///
  /// Optional.
  core.List<core.String>? gateways;

  /// Service hostnames with an optional port for which this route describes
  /// traffic.
  ///
  /// Format: \[:\] Hostname is the fully qualified domain name of a network
  /// host. This matches the RFC 1123 definition of a hostname with 2 notable
  /// exceptions: - IPs are not allowed. - A hostname may be prefixed with a
  /// wildcard label (`*.`). The wildcard label must appear by itself as the
  /// first label. Hostname can be "precise" which is a domain name without the
  /// terminating dot of a network host (e.g. `foo.example.com`) or "wildcard",
  /// which is a domain name prefixed with a single wildcard label (e.g.
  /// `*.example.com`). Note that as per RFC1035 and RFC1123, a label must
  /// consist of lower case alphanumeric characters or '-', and must start and
  /// end with an alphanumeric character. No other punctuation is allowed. The
  /// routes associated with a Mesh or Gateway must have unique hostnames. If
  /// you attempt to attach multiple routes with conflicting hostnames, the
  /// configuration will be rejected. For example, while it is acceptable for
  /// routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated
  /// with the same route, it is not possible to associate two routes both with
  /// `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC
  /// clients must use the channel URI with the port to match this rule (i.e.
  /// "xds:///service:123"), otherwise they must supply the URI without a port
  /// (i.e. "xds:///service").
  ///
  /// Required.
  core.List<core.String>? hostnames;

  /// Set of label tags associated with the GrpcRoute resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Meshes defines a list of meshes this GrpcRoute is attached to, as one of
  /// the routing rules to route the requests served by the mesh.
  ///
  /// Each mesh reference should match the pattern: `projects / *
  /// /locations/global/meshes/`
  ///
  /// Optional.
  core.List<core.String>? meshes;

  /// Name of the GrpcRoute resource.
  ///
  /// It matches pattern `projects / * /locations/global/grpcRoutes/`
  ///
  /// Required.
  core.String? name;

  /// A list of detailed rules defining how to route traffic.
  ///
  /// Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the
  /// first matching GrpcRoute.RouteRule will be executed. At least one rule
  /// must be supplied.
  ///
  /// Required.
  core.List<GrpcRouteRouteRule>? rules;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GrpcRoute({
    this.createTime,
    this.description,
    this.gateways,
    this.hostnames,
    this.labels,
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  GrpcRoute.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gateways: json_.containsKey('gateways')
              ? (json_['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hostnames: json_.containsKey('hostnames')
              ? (json_['hostnames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          meshes: json_.containsKey('meshes')
              ? (json_['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GrpcRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gateways != null) 'gateways': gateways!,
        if (hostnames != null) 'hostnames': hostnames!,
        if (labels != null) 'labels': labels!,
        if (meshes != null) 'meshes': meshes!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The destination to which traffic will be routed.
class GrpcRouteDestination {
  /// The URL of a destination service to which to route traffic.
  ///
  /// Must refer to either a BackendService or ServiceDirectoryService.
  ///
  /// Required.
  core.String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced
  /// by the serviceName field.
  ///
  /// This is computed as: - weight/Sum(weights in this destination list). For
  /// non-zero values, there may be some epsilon from the exact proportion
  /// defined here depending on the precision an implementation supports. If
  /// only one serviceName is specified and it has a weight greater than 0, 100%
  /// of the traffic is forwarded to that backend. If weights are specified for
  /// any one service name, they need to be specified for all of them. If
  /// weights are unspecified for all services, then, traffic is distributed in
  /// equal proportions to all of them.
  ///
  /// Optional.
  core.int? weight;

  GrpcRouteDestination({
    this.serviceName,
    this.weight,
  });

  GrpcRouteDestination.fromJson(core.Map json_)
      : this(
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceName != null) 'serviceName': serviceName!,
        if (weight != null) 'weight': weight!,
      };
}

/// The specification for fault injection introduced into traffic to test the
/// resiliency of clients to destination service failure.
///
/// As part of fault injection, when clients send requests to a destination,
/// delays can be introduced on a percentage of requests before sending those
/// requests to the destination service. Similarly requests from clients can be
/// aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicy {
  /// The specification for aborting to client requests.
  GrpcRouteFaultInjectionPolicyAbort? abort;

  /// The specification for injecting delay to client requests.
  GrpcRouteFaultInjectionPolicyDelay? delay;

  GrpcRouteFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  GrpcRouteFaultInjectionPolicy.fromJson(core.Map json_)
      : this(
          abort: json_.containsKey('abort')
              ? GrpcRouteFaultInjectionPolicyAbort.fromJson(
                  json_['abort'] as core.Map<core.String, core.dynamic>)
              : null,
          delay: json_.containsKey('delay')
              ? GrpcRouteFaultInjectionPolicyDelay.fromJson(
                  json_['delay'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abort != null) 'abort': abort!,
        if (delay != null) 'delay': delay!,
      };
}

/// Specification of how client requests are aborted as part of fault injection
/// before being sent to a destination.
typedef GrpcRouteFaultInjectionPolicyAbort = $RouteFaultInjectionPolicyAbort;

/// Specification of how client requests are delayed as part of fault injection
/// before being sent to a destination.
typedef GrpcRouteFaultInjectionPolicyDelay = $RouteFaultInjectionPolicyDelay;

/// A match against a collection of headers.
class GrpcRouteHeaderMatch {
  /// The key of the header.
  ///
  /// Required.
  core.String? key;

  /// Specifies how to match against the value of the header.
  ///
  /// If not specified, a default value of EXACT is used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified.
  /// - "EXACT" : Will only match the exact value provided.
  /// - "REGULAR_EXPRESSION" : Will match paths conforming to the prefix
  /// specified by value. RE2 syntax is supported.
  core.String? type;

  /// The value of the header.
  ///
  /// Required.
  core.String? value;

  GrpcRouteHeaderMatch({
    this.key,
    this.type,
    this.value,
  });

  GrpcRouteHeaderMatch.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Specifies a match against a method.
class GrpcRouteMethodMatch {
  /// Specifies that matches are case sensitive.
  ///
  /// The default value is true. case_sensitive must not be used with a type of
  /// REGULAR_EXPRESSION.
  ///
  /// Optional.
  core.bool? caseSensitive;

  /// Name of the method to match against.
  ///
  /// If unspecified, will match all methods.
  ///
  /// Required.
  core.String? grpcMethod;

  /// Name of the service to match against.
  ///
  /// If unspecified, will match all services.
  ///
  /// Required.
  core.String? grpcService;

  /// Specifies how to match against the name.
  ///
  /// If not specified, a default value of "EXACT" is used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified.
  /// - "EXACT" : Will only match the exact name provided.
  /// - "REGULAR_EXPRESSION" : Will interpret grpc_method and grpc_service as
  /// regexes. RE2 syntax is supported.
  core.String? type;

  GrpcRouteMethodMatch({
    this.caseSensitive,
    this.grpcMethod,
    this.grpcService,
    this.type,
  });

  GrpcRouteMethodMatch.fromJson(core.Map json_)
      : this(
          caseSensitive: json_.containsKey('caseSensitive')
              ? json_['caseSensitive'] as core.bool
              : null,
          grpcMethod: json_.containsKey('grpcMethod')
              ? json_['grpcMethod'] as core.String
              : null,
          grpcService: json_.containsKey('grpcService')
              ? json_['grpcService'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (grpcMethod != null) 'grpcMethod': grpcMethod!,
        if (grpcService != null) 'grpcService': grpcService!,
        if (type != null) 'type': type!,
      };
}

/// The specifications for retries.
class GrpcRouteRetryPolicy {
  /// Specifies the allowed number of retries.
  ///
  /// This number must be \> 0. If not specified, default to 1.
  core.int? numRetries;

  /// - connect-failure: Router will retry on failures connecting to Backend
  /// Services, for example due to connection timeouts.
  ///
  /// - refused-stream: Router will retry if the backend service resets the
  /// stream with a REFUSED_STREAM error code. This reset type indicates that it
  /// is safe to retry. - cancelled: Router will retry if the gRPC status code
  /// in the response header is set to cancelled - deadline-exceeded: Router
  /// will retry if the gRPC status code in the response header is set to
  /// deadline-exceeded - resource-exhausted: Router will retry if the gRPC
  /// status code in the response header is set to resource-exhausted -
  /// unavailable: Router will retry if the gRPC status code in the response
  /// header is set to unavailable
  core.List<core.String>? retryConditions;

  GrpcRouteRetryPolicy({
    this.numRetries,
    this.retryConditions,
  });

  GrpcRouteRetryPolicy.fromJson(core.Map json_)
      : this(
          numRetries: json_.containsKey('numRetries')
              ? json_['numRetries'] as core.int
              : null,
          retryConditions: json_.containsKey('retryConditions')
              ? (json_['retryConditions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numRetries != null) 'numRetries': numRetries!,
        if (retryConditions != null) 'retryConditions': retryConditions!,
      };
}

/// Specifies how to route matched traffic.
class GrpcRouteRouteAction {
  /// The destination services to which traffic should be forwarded.
  ///
  /// If multiple destinations are specified, traffic will be split between
  /// Backend Service(s) according to the weight field of these destinations.
  ///
  /// Optional.
  core.List<GrpcRouteDestination>? destinations;

  /// The specification for fault injection introduced into traffic to test the
  /// resiliency of clients to destination service failure.
  ///
  /// As part of fault injection, when clients send requests to a destination,
  /// delays can be introduced on a percentage of requests before sending those
  /// requests to the destination service. Similarly requests from clients can
  /// be aborted by for a percentage of requests. timeout and retry_policy will
  /// be ignored by clients that are configured with a fault_injection_policy
  ///
  /// Optional.
  GrpcRouteFaultInjectionPolicy? faultInjectionPolicy;

  /// Specifies the idle timeout for the selected route.
  ///
  /// The idle timeout is defined as the period in which there are no bytes sent
  /// or received on either the upstream or downstream connection. If not set,
  /// the default idle timeout is 1 hour. If set to 0s, the timeout will be
  /// disabled.
  ///
  /// Optional.
  core.String? idleTimeout;

  /// Specifies the retry policy associated with this route.
  ///
  /// Optional.
  GrpcRouteRetryPolicy? retryPolicy;

  /// Specifies cookie-based stateful session affinity.
  ///
  /// Optional.
  GrpcRouteStatefulSessionAffinityPolicy? statefulSessionAffinity;

  /// Specifies the timeout for selected route.
  ///
  /// Timeout is computed from the time the request has been fully processed
  /// (i.e. end of stream) up until the response has been completely processed.
  /// Timeout includes all retries.
  ///
  /// Optional.
  core.String? timeout;

  GrpcRouteRouteAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.idleTimeout,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
  });

  GrpcRouteRouteAction.fromJson(core.Map json_)
      : this(
          destinations: json_.containsKey('destinations')
              ? (json_['destinations'] as core.List)
                  .map((value) => GrpcRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          faultInjectionPolicy: json_.containsKey('faultInjectionPolicy')
              ? GrpcRouteFaultInjectionPolicy.fromJson(
                  json_['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
          retryPolicy: json_.containsKey('retryPolicy')
              ? GrpcRouteRetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          statefulSessionAffinity: json_.containsKey('statefulSessionAffinity')
              ? GrpcRouteStatefulSessionAffinityPolicy.fromJson(
                  json_['statefulSessionAffinity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
        if (faultInjectionPolicy != null)
          'faultInjectionPolicy': faultInjectionPolicy!,
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
        if (statefulSessionAffinity != null)
          'statefulSessionAffinity': statefulSessionAffinity!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// Criteria for matching traffic.
///
/// A RouteMatch will be considered to match when all supplied fields match.
class GrpcRouteRouteMatch {
  /// Specifies a collection of headers to match.
  ///
  /// Optional.
  core.List<GrpcRouteHeaderMatch>? headers;

  /// A gRPC method to match against.
  ///
  /// If this field is empty or omitted, will match all methods.
  ///
  /// Optional.
  GrpcRouteMethodMatch? method;

  GrpcRouteRouteMatch({
    this.headers,
    this.method,
  });

  GrpcRouteRouteMatch.fromJson(core.Map json_)
      : this(
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => GrpcRouteHeaderMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          method: json_.containsKey('method')
              ? GrpcRouteMethodMatch.fromJson(
                  json_['method'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headers != null) 'headers': headers!,
        if (method != null) 'method': method!,
      };
}

/// Describes how to route traffic.
class GrpcRouteRouteRule {
  /// A detailed rule defining how to route traffic.
  ///
  /// This field is required.
  ///
  /// Required.
  GrpcRouteRouteAction? action;

  /// Matches define conditions used for matching the rule against incoming gRPC
  /// requests.
  ///
  /// Each match is independent, i.e. this rule will be matched if ANY one of
  /// the matches is satisfied. If no matches field is specified, this rule will
  /// unconditionally match traffic.
  ///
  /// Optional.
  core.List<GrpcRouteRouteMatch>? matches;

  GrpcRouteRouteRule({
    this.action,
    this.matches,
  });

  GrpcRouteRouteRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? GrpcRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) => GrpcRouteRouteMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (matches != null) 'matches': matches!,
      };
}

/// The specification for cookie-based stateful session affinity where the date
/// plane supplies a “session cookie” with the name "GSSA" which encodes a
/// specific destination host and each request containing that cookie will be
/// directed to that host as long as the destination host remains up and
/// healthy.
///
/// The gRPC proxyless mesh library or sidecar proxy will manage the session
/// cookie but the client application code is responsible for copying the cookie
/// from each RPC in the session to the next.
typedef GrpcRouteStatefulSessionAffinityPolicy
    = $RouteStatefulSessionAffinityPolicy;

/// HttpRoute is the resource defining how HTTP traffic should be routed by a
/// Mesh or Gateway resource.
class HttpRoute {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Gateways defines a list of gateways this HttpRoute is attached to, as one
  /// of the routing rules to route the requests served by the gateway.
  ///
  /// Each gateway reference should match the pattern: `projects / *
  /// /locations/global/gateways/`
  ///
  /// Optional.
  core.List<core.String>? gateways;

  /// Hostnames define a set of hosts that should match against the HTTP host
  /// header to select a HttpRoute to process the request.
  ///
  /// Hostname is the fully qualified domain name of a network host, as defined
  /// by RFC 1123 with the exception that: - IPs are not allowed. - A hostname
  /// may be prefixed with a wildcard label (`*.`). The wildcard label must
  /// appear by itself as the first label. Hostname can be "precise" which is a
  /// domain name without the terminating dot of a network host (e.g.
  /// `foo.example.com`) or "wildcard", which is a domain name prefixed with a
  /// single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and
  /// RFC1123, a label must consist of lower case alphanumeric characters or
  /// '-', and must start and end with an alphanumeric character. No other
  /// punctuation is allowed. The routes associated with a Mesh or Gateways must
  /// have unique hostnames. If you attempt to attach multiple routes with
  /// conflicting hostnames, the configuration will be rejected. For example,
  /// while it is acceptable for routes for the hostnames `*.foo.bar.com` and
  /// `*.bar.com` to be associated with the same Mesh (or Gateways under the
  /// same scope), it is not possible to associate two routes both with
  /// `*.bar.com` or both with `bar.com`.
  ///
  /// Required.
  core.List<core.String>? hostnames;

  /// Set of label tags associated with the HttpRoute resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of
  /// the routing rules to route the requests served by the mesh.
  ///
  /// Each mesh reference should match the pattern: `projects / *
  /// /locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  ///
  /// Optional.
  core.List<core.String>? meshes;

  /// Name of the HttpRoute resource.
  ///
  /// It matches pattern `projects / *
  /// /locations/global/httpRoutes/http_route_name>`.
  ///
  /// Required.
  core.String? name;

  /// Rules that define how traffic is routed and handled.
  ///
  /// Rules will be matched sequentially based on the RouteMatch specified for
  /// the rule.
  ///
  /// Required.
  core.List<HttpRouteRouteRule>? rules;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  HttpRoute({
    this.createTime,
    this.description,
    this.gateways,
    this.hostnames,
    this.labels,
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  HttpRoute.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gateways: json_.containsKey('gateways')
              ? (json_['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hostnames: json_.containsKey('hostnames')
              ? (json_['hostnames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          meshes: json_.containsKey('meshes')
              ? (json_['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => HttpRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gateways != null) 'gateways': gateways!,
        if (hostnames != null) 'hostnames': hostnames!,
        if (labels != null) 'labels': labels!,
        if (meshes != null) 'meshes': meshes!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The Specification for allowing client side cross-origin requests.
class HttpRouteCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that
  /// the actual request can include user credentials.
  ///
  /// This translates to the Access-Control-Allow-Credentials header. Default
  /// value is false.
  core.bool? allowCredentials;

  /// Specifies the content for Access-Control-Allow-Headers header.
  core.List<core.String>? allowHeaders;

  /// Specifies the content for Access-Control-Allow-Methods header.
  core.List<core.String>? allowMethods;

  /// Specifies the regular expression patterns that match allowed origins.
  ///
  /// For regular expression grammar, please see
  /// https://github.com/google/re2/wiki/Syntax.
  core.List<core.String>? allowOriginRegexes;

  /// Specifies the list of origins that will be allowed to do CORS requests.
  ///
  /// An origin is allowed if it matches either an item in allow_origins or an
  /// item in allow_origin_regexes.
  core.List<core.String>? allowOrigins;

  /// If true, the CORS policy is disabled.
  ///
  /// The default value is false, which indicates that the CORS policy is in
  /// effect.
  core.bool? disabled;

  /// Specifies the content for Access-Control-Expose-Headers header.
  core.List<core.String>? exposeHeaders;

  /// Specifies how long result of a preflight request can be cached in seconds.
  ///
  /// This translates to the Access-Control-Max-Age header.
  core.String? maxAge;

  HttpRouteCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOriginRegexes,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    this.maxAge,
  });

  HttpRouteCorsPolicy.fromJson(core.Map json_)
      : this(
          allowCredentials: json_.containsKey('allowCredentials')
              ? json_['allowCredentials'] as core.bool
              : null,
          allowHeaders: json_.containsKey('allowHeaders')
              ? (json_['allowHeaders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowMethods: json_.containsKey('allowMethods')
              ? (json_['allowMethods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowOriginRegexes: json_.containsKey('allowOriginRegexes')
              ? (json_['allowOriginRegexes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowOrigins: json_.containsKey('allowOrigins')
              ? (json_['allowOrigins'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          exposeHeaders: json_.containsKey('exposeHeaders')
              ? (json_['exposeHeaders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxAge: json_.containsKey('maxAge')
              ? json_['maxAge'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCredentials != null) 'allowCredentials': allowCredentials!,
        if (allowHeaders != null) 'allowHeaders': allowHeaders!,
        if (allowMethods != null) 'allowMethods': allowMethods!,
        if (allowOriginRegexes != null)
          'allowOriginRegexes': allowOriginRegexes!,
        if (allowOrigins != null) 'allowOrigins': allowOrigins!,
        if (disabled != null) 'disabled': disabled!,
        if (exposeHeaders != null) 'exposeHeaders': exposeHeaders!,
        if (maxAge != null) 'maxAge': maxAge!,
      };
}

/// Specifications of a destination to which the request should be routed to.
class HttpRouteDestination {
  /// The specification for modifying the headers of a matching request prior to
  /// delivery of the request to the destination.
  ///
  /// If HeaderModifiers are set on both the Destination and the RouteAction,
  /// they will be merged. Conflicts between the two will not be resolved on the
  /// configuration.
  ///
  /// Optional.
  HttpRouteHeaderModifier? requestHeaderModifier;

  /// The specification for modifying the headers of a response prior to sending
  /// the response back to the client.
  ///
  /// If HeaderModifiers are set on both the Destination and the RouteAction,
  /// they will be merged. Conflicts between the two will not be resolved on the
  /// configuration.
  ///
  /// Optional.
  HttpRouteHeaderModifier? responseHeaderModifier;

  /// The URL of a BackendService to route traffic to.
  core.String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced
  /// by the serviceName field.
  ///
  /// This is computed as: - weight/Sum(weights in this destination list). For
  /// non-zero values, there may be some epsilon from the exact proportion
  /// defined here depending on the precision an implementation supports. If
  /// only one serviceName is specified and it has a weight greater than 0, 100%
  /// of the traffic is forwarded to that backend. If weights are specified for
  /// any one service name, they need to be specified for all of them. If
  /// weights are unspecified for all services, then, traffic is distributed in
  /// equal proportions to all of them.
  core.int? weight;

  HttpRouteDestination({
    this.requestHeaderModifier,
    this.responseHeaderModifier,
    this.serviceName,
    this.weight,
  });

  HttpRouteDestination.fromJson(core.Map json_)
      : this(
          requestHeaderModifier: json_.containsKey('requestHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(json_['requestHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          responseHeaderModifier: json_.containsKey('responseHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(json_['responseHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestHeaderModifier != null)
          'requestHeaderModifier': requestHeaderModifier!,
        if (responseHeaderModifier != null)
          'responseHeaderModifier': responseHeaderModifier!,
        if (serviceName != null) 'serviceName': serviceName!,
        if (weight != null) 'weight': weight!,
      };
}

/// The specification for fault injection introduced into traffic to test the
/// resiliency of clients to destination service failure.
///
/// As part of fault injection, when clients send requests to a destination,
/// delays can be introduced by client proxy on a percentage of requests before
/// sending those requests to the destination service. Similarly requests can be
/// aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicy {
  /// The specification for aborting to client requests.
  HttpRouteFaultInjectionPolicyAbort? abort;

  /// The specification for injecting delay to client requests.
  HttpRouteFaultInjectionPolicyDelay? delay;

  HttpRouteFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  HttpRouteFaultInjectionPolicy.fromJson(core.Map json_)
      : this(
          abort: json_.containsKey('abort')
              ? HttpRouteFaultInjectionPolicyAbort.fromJson(
                  json_['abort'] as core.Map<core.String, core.dynamic>)
              : null,
          delay: json_.containsKey('delay')
              ? HttpRouteFaultInjectionPolicyDelay.fromJson(
                  json_['delay'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abort != null) 'abort': abort!,
        if (delay != null) 'delay': delay!,
      };
}

/// Specification of how client requests are aborted as part of fault injection
/// before being sent to a destination.
typedef HttpRouteFaultInjectionPolicyAbort = $RouteFaultInjectionPolicyAbort;

/// Specification of how client requests are delayed as part of fault injection
/// before being sent to a destination.
typedef HttpRouteFaultInjectionPolicyDelay = $RouteFaultInjectionPolicyDelay;

/// Specifies how to select a route rule based on HTTP request headers.
class HttpRouteHeaderMatch {
  /// The value of the header should match exactly the content of exact_match.
  core.String? exactMatch;

  /// The name of the HTTP header to match against.
  core.String? header;

  /// If specified, the match result will be inverted before checking.
  ///
  /// Default value is set to false.
  core.bool? invertMatch;

  /// The value of the header must start with the contents of prefix_match.
  core.String? prefixMatch;

  /// A header with header_name must exist.
  ///
  /// The match takes place whether or not the header has a value.
  core.bool? presentMatch;

  /// If specified, the rule will match if the request header value is within
  /// the range.
  HttpRouteHeaderMatchIntegerRange? rangeMatch;

  /// The value of the header must match the regular expression specified in
  /// regex_match.
  ///
  /// For regular expression grammar, please see:
  /// https://github.com/google/re2/wiki/Syntax
  core.String? regexMatch;

  /// The value of the header must end with the contents of suffix_match.
  core.String? suffixMatch;

  HttpRouteHeaderMatch({
    this.exactMatch,
    this.header,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.rangeMatch,
    this.regexMatch,
    this.suffixMatch,
  });

  HttpRouteHeaderMatch.fromJson(core.Map json_)
      : this(
          exactMatch: json_.containsKey('exactMatch')
              ? json_['exactMatch'] as core.String
              : null,
          header: json_.containsKey('header')
              ? json_['header'] as core.String
              : null,
          invertMatch: json_.containsKey('invertMatch')
              ? json_['invertMatch'] as core.bool
              : null,
          prefixMatch: json_.containsKey('prefixMatch')
              ? json_['prefixMatch'] as core.String
              : null,
          presentMatch: json_.containsKey('presentMatch')
              ? json_['presentMatch'] as core.bool
              : null,
          rangeMatch: json_.containsKey('rangeMatch')
              ? HttpRouteHeaderMatchIntegerRange.fromJson(
                  json_['rangeMatch'] as core.Map<core.String, core.dynamic>)
              : null,
          regexMatch: json_.containsKey('regexMatch')
              ? json_['regexMatch'] as core.String
              : null,
          suffixMatch: json_.containsKey('suffixMatch')
              ? json_['suffixMatch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exactMatch != null) 'exactMatch': exactMatch!,
        if (header != null) 'header': header!,
        if (invertMatch != null) 'invertMatch': invertMatch!,
        if (prefixMatch != null) 'prefixMatch': prefixMatch!,
        if (presentMatch != null) 'presentMatch': presentMatch!,
        if (rangeMatch != null) 'rangeMatch': rangeMatch!,
        if (regexMatch != null) 'regexMatch': regexMatch!,
        if (suffixMatch != null) 'suffixMatch': suffixMatch!,
      };
}

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRange {
  /// End of the range (exclusive)
  core.int? end;

  /// Start of the range (inclusive)
  core.int? start;

  HttpRouteHeaderMatchIntegerRange({
    this.end,
    this.start,
  });

  HttpRouteHeaderMatchIntegerRange.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end') ? json_['end'] as core.int : null,
          start: json_.containsKey('start') ? json_['start'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// The specification for modifying HTTP header in HTTP request and HTTP
/// response.
class HttpRouteHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value
  /// is the value of the header.
  core.Map<core.String, core.String>? add;

  /// Remove headers (matching by header names) specified in the list.
  core.List<core.String>? remove;

  /// Completely overwrite/replace the headers with given map where key is the
  /// name of the header, value is the value of the header.
  core.Map<core.String, core.String>? set;

  HttpRouteHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  HttpRouteHeaderModifier.fromJson(core.Map json_)
      : this(
          add: json_.containsKey('add')
              ? (json_['add'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          remove: json_.containsKey('remove')
              ? (json_['remove'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          set: json_.containsKey('set')
              ? (json_['set'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (add != null) 'add': add!,
        if (remove != null) 'remove': remove!,
        if (set != null) 'set': set!,
      };
}

/// Static HTTP response object to be returned.
class HttpRouteHttpDirectResponse {
  /// Response body as bytes.
  ///
  /// Maximum body size is 4096B.
  ///
  /// Optional.
  core.String? bytesBody;
  core.List<core.int> get bytesBodyAsBytes => convert.base64.decode(bytesBody!);

  set bytesBodyAsBytes(core.List<core.int> bytes_) {
    bytesBody =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Status to return as part of HTTP Response.
  ///
  /// Must be a positive integer.
  ///
  /// Required.
  core.int? status;

  /// Response body as a string.
  ///
  /// Maximum body length is 1024 characters.
  ///
  /// Optional.
  core.String? stringBody;

  HttpRouteHttpDirectResponse({
    this.bytesBody,
    this.status,
    this.stringBody,
  });

  HttpRouteHttpDirectResponse.fromJson(core.Map json_)
      : this(
          bytesBody: json_.containsKey('bytesBody')
              ? json_['bytesBody'] as core.String
              : null,
          status:
              json_.containsKey('status') ? json_['status'] as core.int : null,
          stringBody: json_.containsKey('stringBody')
              ? json_['stringBody'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesBody != null) 'bytesBody': bytesBody!,
        if (status != null) 'status': status!,
        if (stringBody != null) 'stringBody': stringBody!,
      };
}

/// Specifications to match a query parameter in the request.
class HttpRouteQueryParameterMatch {
  /// The value of the query parameter must exactly match the contents of
  /// exact_match.
  ///
  /// Only one of exact_match, regex_match, or present_match must be set.
  core.String? exactMatch;

  /// Specifies that the QueryParameterMatcher matches if request contains query
  /// parameter, irrespective of whether the parameter has a value or not.
  ///
  /// Only one of exact_match, regex_match, or present_match must be set.
  core.bool? presentMatch;

  /// The name of the query parameter to match.
  core.String? queryParameter;

  /// The value of the query parameter must match the regular expression
  /// specified by regex_match.
  ///
  /// For regular expression grammar, please see
  /// https://github.com/google/re2/wiki/Syntax Only one of exact_match,
  /// regex_match, or present_match must be set.
  core.String? regexMatch;

  HttpRouteQueryParameterMatch({
    this.exactMatch,
    this.presentMatch,
    this.queryParameter,
    this.regexMatch,
  });

  HttpRouteQueryParameterMatch.fromJson(core.Map json_)
      : this(
          exactMatch: json_.containsKey('exactMatch')
              ? json_['exactMatch'] as core.String
              : null,
          presentMatch: json_.containsKey('presentMatch')
              ? json_['presentMatch'] as core.bool
              : null,
          queryParameter: json_.containsKey('queryParameter')
              ? json_['queryParameter'] as core.String
              : null,
          regexMatch: json_.containsKey('regexMatch')
              ? json_['regexMatch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exactMatch != null) 'exactMatch': exactMatch!,
        if (presentMatch != null) 'presentMatch': presentMatch!,
        if (queryParameter != null) 'queryParameter': queryParameter!,
        if (regexMatch != null) 'regexMatch': regexMatch!,
      };
}

/// The specification for redirecting traffic.
class HttpRouteRedirect {
  /// The host that will be used in the redirect response instead of the one
  /// that was supplied in the request.
  core.String? hostRedirect;

  /// If set to true, the URL scheme in the redirected request is set to https.
  ///
  /// If set to false, the URL scheme of the redirected request will remain the
  /// same as that of the request. The default is set to false.
  core.bool? httpsRedirect;

  /// The path that will be used in the redirect response instead of the one
  /// that was supplied in the request.
  ///
  /// path_redirect can not be supplied together with prefix_redirect. Supply
  /// one alone or neither. If neither is supplied, the path of the original
  /// request will be used for the redirect.
  core.String? pathRedirect;

  /// The port that will be used in the redirected request instead of the one
  /// that was supplied in the request.
  core.int? portRedirect;

  /// Indicates that during redirection, the matched prefix (or path) should be
  /// swapped with this value.
  ///
  /// This option allows URLs be dynamically created based on the request.
  core.String? prefixRewrite;

  /// The HTTP Status code to use for the redirect.
  /// Possible string values are:
  /// - "RESPONSE_CODE_UNSPECIFIED" : Default value
  /// - "MOVED_PERMANENTLY_DEFAULT" : Corresponds to 301.
  /// - "FOUND" : Corresponds to 302.
  /// - "SEE_OTHER" : Corresponds to 303.
  /// - "TEMPORARY_REDIRECT" : Corresponds to 307. In this case, the request
  /// method will be retained.
  /// - "PERMANENT_REDIRECT" : Corresponds to 308. In this case, the request
  /// method will be retained.
  core.String? responseCode;

  /// if set to true, any accompanying query portion of the original URL is
  /// removed prior to redirecting the request.
  ///
  /// If set to false, the query portion of the original URL is retained. The
  /// default is set to false.
  core.bool? stripQuery;

  HttpRouteRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.portRedirect,
    this.prefixRewrite,
    this.responseCode,
    this.stripQuery,
  });

  HttpRouteRedirect.fromJson(core.Map json_)
      : this(
          hostRedirect: json_.containsKey('hostRedirect')
              ? json_['hostRedirect'] as core.String
              : null,
          httpsRedirect: json_.containsKey('httpsRedirect')
              ? json_['httpsRedirect'] as core.bool
              : null,
          pathRedirect: json_.containsKey('pathRedirect')
              ? json_['pathRedirect'] as core.String
              : null,
          portRedirect: json_.containsKey('portRedirect')
              ? json_['portRedirect'] as core.int
              : null,
          prefixRewrite: json_.containsKey('prefixRewrite')
              ? json_['prefixRewrite'] as core.String
              : null,
          responseCode: json_.containsKey('responseCode')
              ? json_['responseCode'] as core.String
              : null,
          stripQuery: json_.containsKey('stripQuery')
              ? json_['stripQuery'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostRedirect != null) 'hostRedirect': hostRedirect!,
        if (httpsRedirect != null) 'httpsRedirect': httpsRedirect!,
        if (pathRedirect != null) 'pathRedirect': pathRedirect!,
        if (portRedirect != null) 'portRedirect': portRedirect!,
        if (prefixRewrite != null) 'prefixRewrite': prefixRewrite!,
        if (responseCode != null) 'responseCode': responseCode!,
        if (stripQuery != null) 'stripQuery': stripQuery!,
      };
}

/// Specifies the policy on how requests are shadowed to a separate mirrored
/// destination service.
///
/// The proxy does not wait for responses from the shadow service. Prior to
/// sending traffic to the shadow service, the host/authority header is suffixed
/// with -shadow.
class HttpRouteRequestMirrorPolicy {
  /// The destination the requests will be mirrored to.
  ///
  /// The weight of the destination will be ignored.
  HttpRouteDestination? destination;

  /// The percentage of requests to get mirrored to the desired destination.
  ///
  /// Optional.
  core.double? mirrorPercent;

  HttpRouteRequestMirrorPolicy({
    this.destination,
    this.mirrorPercent,
  });

  HttpRouteRequestMirrorPolicy.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? HttpRouteDestination.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          mirrorPercent: json_.containsKey('mirrorPercent')
              ? (json_['mirrorPercent'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (mirrorPercent != null) 'mirrorPercent': mirrorPercent!,
      };
}

/// The specifications for retries.
class HttpRouteRetryPolicy {
  /// Specifies the allowed number of retries.
  ///
  /// This number must be \> 0. If not specified, default to 1.
  core.int? numRetries;

  /// Specifies a non-zero timeout per retry attempt.
  core.String? perTryTimeout;

  /// Specifies one or more conditions when this retry policy applies.
  ///
  /// Valid values are: 5xx: Proxy will attempt a retry if the destination
  /// service responds with any 5xx response code, of if the destination service
  /// does not respond at all, example: disconnect, reset, read timeout,
  /// connection failure and refused streams. gateway-error: Similar to 5xx, but
  /// only applies to response codes 502, 503, 504. reset: Proxy will attempt a
  /// retry if the destination service does not respond at all
  /// (disconnect/reset/read timeout) connect-failure: Proxy will retry on
  /// failures connecting to destination for example due to connection timeouts.
  /// retriable-4xx: Proxy will retry fro retriable 4xx response codes.
  /// Currently the only retriable error supported is 409. refused-stream: Proxy
  /// will retry if the destination resets the stream with a REFUSED_STREAM
  /// error code. This reset type indicates that it is safe to retry.
  core.List<core.String>? retryConditions;

  HttpRouteRetryPolicy({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  HttpRouteRetryPolicy.fromJson(core.Map json_)
      : this(
          numRetries: json_.containsKey('numRetries')
              ? json_['numRetries'] as core.int
              : null,
          perTryTimeout: json_.containsKey('perTryTimeout')
              ? json_['perTryTimeout'] as core.String
              : null,
          retryConditions: json_.containsKey('retryConditions')
              ? (json_['retryConditions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numRetries != null) 'numRetries': numRetries!,
        if (perTryTimeout != null) 'perTryTimeout': perTryTimeout!,
        if (retryConditions != null) 'retryConditions': retryConditions!,
      };
}

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteAction {
  /// The specification for allowing client side cross-origin requests.
  HttpRouteCorsPolicy? corsPolicy;

  /// The destination to which traffic should be forwarded.
  core.List<HttpRouteDestination>? destinations;

  /// Static HTTP Response object to be returned regardless of the request.
  ///
  /// Optional.
  HttpRouteHttpDirectResponse? directResponse;

  /// The specification for fault injection introduced into traffic to test the
  /// resiliency of clients to backend service failure.
  ///
  /// As part of fault injection, when clients send requests to a backend
  /// service, delays can be introduced on a percentage of requests before
  /// sending those requests to the backend service. Similarly requests from
  /// clients can be aborted for a percentage of requests. timeout and
  /// retry_policy will be ignored by clients that are configured with a
  /// fault_injection_policy
  HttpRouteFaultInjectionPolicy? faultInjectionPolicy;

  /// Specifies the idle timeout for the selected route.
  ///
  /// The idle timeout is defined as the period in which there are no bytes sent
  /// or received on either the upstream or downstream connection. If not set,
  /// the default idle timeout is 1 hour. If set to 0s, the timeout will be
  /// disabled.
  ///
  /// Optional.
  core.String? idleTimeout;

  /// If set, the request is directed as configured by this field.
  HttpRouteRedirect? redirect;

  /// The specification for modifying the headers of a matching request prior to
  /// delivery of the request to the destination.
  ///
  /// If HeaderModifiers are set on both the Destination and the RouteAction,
  /// they will be merged. Conflicts between the two will not be resolved on the
  /// configuration.
  HttpRouteHeaderModifier? requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination
  /// are shadowed to a separate mirrored destination.
  ///
  /// Proxy will not wait for the shadow destination to respond before returning
  /// the response. Prior to sending traffic to the shadow service, the
  /// host/authority header is suffixed with -shadow.
  HttpRouteRequestMirrorPolicy? requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending
  /// the response back to the client.
  ///
  /// If HeaderModifiers are set on both the Destination and the RouteAction,
  /// they will be merged. Conflicts between the two will not be resolved on the
  /// configuration.
  HttpRouteHeaderModifier? responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  HttpRouteRetryPolicy? retryPolicy;

  /// Specifies cookie-based stateful session affinity.
  ///
  /// Optional.
  HttpRouteStatefulSessionAffinityPolicy? statefulSessionAffinity;

  /// Specifies the timeout for selected route.
  ///
  /// Timeout is computed from the time the request has been fully processed
  /// (i.e. end of stream) up until the response has been completely processed.
  /// Timeout includes all retries.
  core.String? timeout;

  /// The specification for rewrite URL before forwarding requests to the
  /// destination.
  HttpRouteURLRewrite? urlRewrite;

  HttpRouteRouteAction({
    this.corsPolicy,
    this.destinations,
    this.directResponse,
    this.faultInjectionPolicy,
    this.idleTimeout,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
    this.urlRewrite,
  });

  HttpRouteRouteAction.fromJson(core.Map json_)
      : this(
          corsPolicy: json_.containsKey('corsPolicy')
              ? HttpRouteCorsPolicy.fromJson(
                  json_['corsPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          destinations: json_.containsKey('destinations')
              ? (json_['destinations'] as core.List)
                  .map((value) => HttpRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          directResponse: json_.containsKey('directResponse')
              ? HttpRouteHttpDirectResponse.fromJson(json_['directResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          faultInjectionPolicy: json_.containsKey('faultInjectionPolicy')
              ? HttpRouteFaultInjectionPolicy.fromJson(
                  json_['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
          redirect: json_.containsKey('redirect')
              ? HttpRouteRedirect.fromJson(
                  json_['redirect'] as core.Map<core.String, core.dynamic>)
              : null,
          requestHeaderModifier: json_.containsKey('requestHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(json_['requestHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestMirrorPolicy: json_.containsKey('requestMirrorPolicy')
              ? HttpRouteRequestMirrorPolicy.fromJson(
                  json_['requestMirrorPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          responseHeaderModifier: json_.containsKey('responseHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(json_['responseHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          retryPolicy: json_.containsKey('retryPolicy')
              ? HttpRouteRetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          statefulSessionAffinity: json_.containsKey('statefulSessionAffinity')
              ? HttpRouteStatefulSessionAffinityPolicy.fromJson(
                  json_['statefulSessionAffinity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
          urlRewrite: json_.containsKey('urlRewrite')
              ? HttpRouteURLRewrite.fromJson(
                  json_['urlRewrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (corsPolicy != null) 'corsPolicy': corsPolicy!,
        if (destinations != null) 'destinations': destinations!,
        if (directResponse != null) 'directResponse': directResponse!,
        if (faultInjectionPolicy != null)
          'faultInjectionPolicy': faultInjectionPolicy!,
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
        if (redirect != null) 'redirect': redirect!,
        if (requestHeaderModifier != null)
          'requestHeaderModifier': requestHeaderModifier!,
        if (requestMirrorPolicy != null)
          'requestMirrorPolicy': requestMirrorPolicy!,
        if (responseHeaderModifier != null)
          'responseHeaderModifier': responseHeaderModifier!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
        if (statefulSessionAffinity != null)
          'statefulSessionAffinity': statefulSessionAffinity!,
        if (timeout != null) 'timeout': timeout!,
        if (urlRewrite != null) 'urlRewrite': urlRewrite!,
      };
}

/// RouteMatch defines specifications used to match requests.
///
/// If multiple match types are set, this RouteMatch will match if ALL type of
/// matches are matched.
class HttpRouteRouteMatch {
  /// The HTTP request path value should exactly match this value.
  ///
  /// Only one of full_path_match, prefix_match, or regex_match should be used.
  core.String? fullPathMatch;

  /// Specifies a list of HTTP request headers to match against.
  ///
  /// ALL of the supplied headers must be matched.
  core.List<HttpRouteHeaderMatch>? headers;

  /// Specifies if prefix_match and full_path_match matches are case sensitive.
  ///
  /// The default value is false.
  core.bool? ignoreCase;

  /// The HTTP request path value must begin with specified prefix_match.
  ///
  /// prefix_match must begin with a /. Only one of full_path_match,
  /// prefix_match, or regex_match should be used.
  core.String? prefixMatch;

  /// Specifies a list of query parameters to match against.
  ///
  /// ALL of the query parameters must be matched.
  core.List<HttpRouteQueryParameterMatch>? queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified
  /// by regex_match after removing any query parameters and anchor supplied
  /// with the original URL.
  ///
  /// For regular expression grammar, please see
  /// https://github.com/google/re2/wiki/Syntax Only one of full_path_match,
  /// prefix_match, or regex_match should be used.
  core.String? regexMatch;

  HttpRouteRouteMatch({
    this.fullPathMatch,
    this.headers,
    this.ignoreCase,
    this.prefixMatch,
    this.queryParameters,
    this.regexMatch,
  });

  HttpRouteRouteMatch.fromJson(core.Map json_)
      : this(
          fullPathMatch: json_.containsKey('fullPathMatch')
              ? json_['fullPathMatch'] as core.String
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => HttpRouteHeaderMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ignoreCase: json_.containsKey('ignoreCase')
              ? json_['ignoreCase'] as core.bool
              : null,
          prefixMatch: json_.containsKey('prefixMatch')
              ? json_['prefixMatch'] as core.String
              : null,
          queryParameters: json_.containsKey('queryParameters')
              ? (json_['queryParameters'] as core.List)
                  .map((value) => HttpRouteQueryParameterMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regexMatch: json_.containsKey('regexMatch')
              ? json_['regexMatch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullPathMatch != null) 'fullPathMatch': fullPathMatch!,
        if (headers != null) 'headers': headers!,
        if (ignoreCase != null) 'ignoreCase': ignoreCase!,
        if (prefixMatch != null) 'prefixMatch': prefixMatch!,
        if (queryParameters != null) 'queryParameters': queryParameters!,
        if (regexMatch != null) 'regexMatch': regexMatch!,
      };
}

/// Specifies how to match traffic and how to route traffic when traffic is
/// matched.
class HttpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  HttpRouteRouteAction? action;

  /// A list of matches define conditions used for matching the rule against
  /// incoming HTTP requests.
  ///
  /// Each match is independent, i.e. this rule will be matched if ANY one of
  /// the matches is satisfied. If no matches field is specified, this rule will
  /// unconditionally match traffic. If a default rule is desired to be
  /// configured, add a rule with no matches specified to the end of the rules
  /// list.
  core.List<HttpRouteRouteMatch>? matches;

  HttpRouteRouteRule({
    this.action,
    this.matches,
  });

  HttpRouteRouteRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? HttpRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) => HttpRouteRouteMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (matches != null) 'matches': matches!,
      };
}

/// The specification for cookie-based stateful session affinity where the date
/// plane supplies a “session cookie” with the name "GSSA" which encodes a
/// specific destination host and each request containing that cookie will be
/// directed to that host as long as the destination host remains up and
/// healthy.
///
/// The gRPC proxyless mesh library or sidecar proxy will manage the session
/// cookie but the client application code is responsible for copying the cookie
/// from each RPC in the session to the next.
typedef HttpRouteStatefulSessionAffinityPolicy
    = $RouteStatefulSessionAffinityPolicy;

/// The specification for modifying the URL of the request, prior to forwarding
/// the request to the destination.
class HttpRouteURLRewrite {
  /// Prior to forwarding the request to the selected destination, the requests
  /// host header is replaced by this value.
  core.String? hostRewrite;

  /// Prior to forwarding the request to the selected destination, the matching
  /// portion of the requests path is replaced by this value.
  core.String? pathPrefixRewrite;

  HttpRouteURLRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  HttpRouteURLRewrite.fromJson(core.Map json_)
      : this(
          hostRewrite: json_.containsKey('hostRewrite')
              ? json_['hostRewrite'] as core.String
              : null,
          pathPrefixRewrite: json_.containsKey('pathPrefixRewrite')
              ? json_['pathPrefixRewrite'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostRewrite != null) 'hostRewrite': hostRewrite!,
        if (pathPrefixRewrite != null) 'pathPrefixRewrite': pathPrefixRewrite!,
      };
}

/// `LbRouteExtension` is a resource that lets you control where traffic is
/// routed to for a given request.
class LbRouteExtension {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human-readable description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// A set of ordered extension chains that contain the match conditions and
  /// extensions to execute.
  ///
  /// Match conditions for each extension chain are evaluated in sequence for a
  /// given request. The first extension chain that has a condition that matches
  /// the request is executed. Any subsequent extension chains do not execute.
  /// Limited to 5 extension chains per resource.
  ///
  /// Required.
  core.List<ExtensionChain>? extensionChains;

  /// A list of references to the forwarding rules to which this service
  /// extension is attached to.
  ///
  /// At least one forwarding rule is required. There can be only one
  /// `LbRouteExtension` resource per forwarding rule.
  ///
  /// Required.
  core.List<core.String>? forwardingRules;

  /// Set of labels associated with the `LbRouteExtension` resource.
  ///
  /// The format must comply with
  /// [the requirements for labels](https://cloud.google.com/compute/docs/labeling-resources#requirements)
  /// for Google Cloud resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// All backend services and forwarding rules referenced by this extension
  /// must share the same load balancing scheme.
  ///
  /// Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more
  /// information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOAD_BALANCING_SCHEME_UNSPECIFIED" : Default value. Do not use.
  /// - "INTERNAL_MANAGED" : Signifies that this is used for Internal HTTP(S)
  /// Load Balancing.
  /// - "EXTERNAL_MANAGED" : Signifies that this is used for External Managed
  /// HTTP(S) Load Balancing.
  core.String? loadBalancingScheme;

  /// Identifier.
  ///
  /// Name of the `LbRouteExtension` resource in the following format:
  /// `projects/{project}/locations/{location}/lbRouteExtensions/{lb_route_extension}`.
  ///
  /// Required.
  core.String? name;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  LbRouteExtension({
    this.createTime,
    this.description,
    this.extensionChains,
    this.forwardingRules,
    this.labels,
    this.loadBalancingScheme,
    this.name,
    this.updateTime,
  });

  LbRouteExtension.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          extensionChains: json_.containsKey('extensionChains')
              ? (json_['extensionChains'] as core.List)
                  .map((value) => ExtensionChain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          forwardingRules: json_.containsKey('forwardingRules')
              ? (json_['forwardingRules'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          loadBalancingScheme: json_.containsKey('loadBalancingScheme')
              ? json_['loadBalancingScheme'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (extensionChains != null) 'extensionChains': extensionChains!,
        if (forwardingRules != null) 'forwardingRules': forwardingRules!,
        if (labels != null) 'labels': labels!,
        if (loadBalancingScheme != null)
          'loadBalancingScheme': loadBalancingScheme!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// `LbTrafficExtension` is a resource that lets the extension service modify
/// the headers and payloads of both requests and responses without impacting
/// the choice of backend services or any other security policies associated
/// with the backend service.
class LbTrafficExtension {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human-readable description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// A set of ordered extension chains that contain the match conditions and
  /// extensions to execute.
  ///
  /// Match conditions for each extension chain are evaluated in sequence for a
  /// given request. The first extension chain that has a condition that matches
  /// the request is executed. Any subsequent extension chains do not execute.
  /// Limited to 5 extension chains per resource.
  ///
  /// Required.
  core.List<ExtensionChain>? extensionChains;

  /// A list of references to the forwarding rules to which this service
  /// extension is attached to.
  ///
  /// At least one forwarding rule is required. There can be only one
  /// `LBTrafficExtension` resource per forwarding rule.
  ///
  /// Required.
  core.List<core.String>? forwardingRules;

  /// Set of labels associated with the `LbTrafficExtension` resource.
  ///
  /// The format must comply with
  /// [the requirements for labels](https://cloud.google.com/compute/docs/labeling-resources#requirements)
  /// for Google Cloud resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// All backend services and forwarding rules referenced by this extension
  /// must share the same load balancing scheme.
  ///
  /// Supported values: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`. For more
  /// information, refer to
  /// [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service).
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOAD_BALANCING_SCHEME_UNSPECIFIED" : Default value. Do not use.
  /// - "INTERNAL_MANAGED" : Signifies that this is used for Internal HTTP(S)
  /// Load Balancing.
  /// - "EXTERNAL_MANAGED" : Signifies that this is used for External Managed
  /// HTTP(S) Load Balancing.
  core.String? loadBalancingScheme;

  /// Identifier.
  ///
  /// Name of the `LbTrafficExtension` resource in the following format:
  /// `projects/{project}/locations/{location}/lbTrafficExtensions/{lb_traffic_extension}`.
  ///
  /// Required.
  core.String? name;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  LbTrafficExtension({
    this.createTime,
    this.description,
    this.extensionChains,
    this.forwardingRules,
    this.labels,
    this.loadBalancingScheme,
    this.name,
    this.updateTime,
  });

  LbTrafficExtension.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          extensionChains: json_.containsKey('extensionChains')
              ? (json_['extensionChains'] as core.List)
                  .map((value) => ExtensionChain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          forwardingRules: json_.containsKey('forwardingRules')
              ? (json_['forwardingRules'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          loadBalancingScheme: json_.containsKey('loadBalancingScheme')
              ? json_['loadBalancingScheme'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (extensionChains != null) 'extensionChains': extensionChains!,
        if (forwardingRules != null) 'forwardingRules': forwardingRules!,
        if (labels != null) 'labels': labels!,
        if (loadBalancingScheme != null)
          'loadBalancingScheme': loadBalancingScheme!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response returned by the ListEndpointPolicies method.
class ListEndpointPoliciesResponse {
  /// List of EndpointPolicy resources.
  core.List<EndpointPolicy>? endpointPolicies;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListEndpointPoliciesResponse({
    this.endpointPolicies,
    this.nextPageToken,
  });

  ListEndpointPoliciesResponse.fromJson(core.Map json_)
      : this(
          endpointPolicies: json_.containsKey('endpointPolicies')
              ? (json_['endpointPolicies'] as core.List)
                  .map((value) => EndpointPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointPolicies != null) 'endpointPolicies': endpointPolicies!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response returned by the ListGateways method.
class ListGatewaysResponse {
  /// List of Gateway resources.
  core.List<Gateway>? gateways;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGatewaysResponse({
    this.gateways,
    this.nextPageToken,
    this.unreachable,
  });

  ListGatewaysResponse.fromJson(core.Map json_)
      : this(
          gateways: json_.containsKey('gateways')
              ? (json_['gateways'] as core.List)
                  .map((value) => Gateway.fromJson(
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
        if (gateways != null) 'gateways': gateways!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response returned by the ListGrpcRoutes method.
class ListGrpcRoutesResponse {
  /// List of GrpcRoute resources.
  core.List<GrpcRoute>? grpcRoutes;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListGrpcRoutesResponse({
    this.grpcRoutes,
    this.nextPageToken,
  });

  ListGrpcRoutesResponse.fromJson(core.Map json_)
      : this(
          grpcRoutes: json_.containsKey('grpcRoutes')
              ? (json_['grpcRoutes'] as core.List)
                  .map((value) => GrpcRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (grpcRoutes != null) 'grpcRoutes': grpcRoutes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response returned by the ListHttpRoutes method.
class ListHttpRoutesResponse {
  /// List of HttpRoute resources.
  core.List<HttpRoute>? httpRoutes;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListHttpRoutesResponse({
    this.httpRoutes,
    this.nextPageToken,
  });

  ListHttpRoutesResponse.fromJson(core.Map json_)
      : this(
          httpRoutes: json_.containsKey('httpRoutes')
              ? (json_['httpRoutes'] as core.List)
                  .map((value) => HttpRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpRoutes != null) 'httpRoutes': httpRoutes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Message for response to listing `LbRouteExtension` resources.
class ListLbRouteExtensionsResponse {
  /// The list of `LbRouteExtension` resources.
  core.List<LbRouteExtension>? lbRouteExtensions;

  /// A token identifying a page of results that the server returns.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListLbRouteExtensionsResponse({
    this.lbRouteExtensions,
    this.nextPageToken,
    this.unreachable,
  });

  ListLbRouteExtensionsResponse.fromJson(core.Map json_)
      : this(
          lbRouteExtensions: json_.containsKey('lbRouteExtensions')
              ? (json_['lbRouteExtensions'] as core.List)
                  .map((value) => LbRouteExtension.fromJson(
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
        if (lbRouteExtensions != null) 'lbRouteExtensions': lbRouteExtensions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to listing `LbTrafficExtension` resources.
class ListLbTrafficExtensionsResponse {
  /// The list of `LbTrafficExtension` resources.
  core.List<LbTrafficExtension>? lbTrafficExtensions;

  /// A token identifying a page of results that the server returns.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListLbTrafficExtensionsResponse({
    this.lbTrafficExtensions,
    this.nextPageToken,
    this.unreachable,
  });

  ListLbTrafficExtensionsResponse.fromJson(core.Map json_)
      : this(
          lbTrafficExtensions: json_.containsKey('lbTrafficExtensions')
              ? (json_['lbTrafficExtensions'] as core.List)
                  .map((value) => LbTrafficExtension.fromJson(
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
        if (lbTrafficExtensions != null)
          'lbTrafficExtensions': lbTrafficExtensions!,
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

/// Response returned by the ListMeshes method.
class ListMeshesResponse {
  /// List of Mesh resources.
  core.List<Mesh>? meshes;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListMeshesResponse({
    this.meshes,
    this.nextPageToken,
  });

  ListMeshesResponse.fromJson(core.Map json_)
      : this(
          meshes: json_.containsKey('meshes')
              ? (json_['meshes'] as core.List)
                  .map((value) => Mesh.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (meshes != null) 'meshes': meshes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

/// Response returned by the ListServiceBindings method.
class ListServiceBindingsResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of ServiceBinding resources.
  core.List<ServiceBinding>? serviceBindings;

  ListServiceBindingsResponse({
    this.nextPageToken,
    this.serviceBindings,
  });

  ListServiceBindingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceBindings: json_.containsKey('serviceBindings')
              ? (json_['serviceBindings'] as core.List)
                  .map((value) => ServiceBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceBindings != null) 'serviceBindings': serviceBindings!,
      };
}

/// Response returned by the ListServiceLbPolicies method.
class ListServiceLbPoliciesResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of ServiceLbPolicy resources.
  core.List<ServiceLbPolicy>? serviceLbPolicies;

  ListServiceLbPoliciesResponse({
    this.nextPageToken,
    this.serviceLbPolicies,
  });

  ListServiceLbPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceLbPolicies: json_.containsKey('serviceLbPolicies')
              ? (json_['serviceLbPolicies'] as core.List)
                  .map((value) => ServiceLbPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceLbPolicies != null) 'serviceLbPolicies': serviceLbPolicies!,
      };
}

/// Response returned by the ListTcpRoutes method.
class ListTcpRoutesResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of TcpRoute resources.
  core.List<TcpRoute>? tcpRoutes;

  ListTcpRoutesResponse({
    this.nextPageToken,
    this.tcpRoutes,
  });

  ListTcpRoutesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tcpRoutes: json_.containsKey('tcpRoutes')
              ? (json_['tcpRoutes'] as core.List)
                  .map((value) => TcpRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tcpRoutes != null) 'tcpRoutes': tcpRoutes!,
      };
}

/// Response returned by the ListTlsRoutes method.
class ListTlsRoutesResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of TlsRoute resources.
  core.List<TlsRoute>? tlsRoutes;

  ListTlsRoutesResponse({
    this.nextPageToken,
    this.tlsRoutes,
  });

  ListTlsRoutesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tlsRoutes: json_.containsKey('tlsRoutes')
              ? (json_['tlsRoutes'] as core.List)
                  .map((value) => TlsRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tlsRoutes != null) 'tlsRoutes': tlsRoutes!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Mesh represents a logical configuration grouping for workload to workload
/// communication within a service mesh.
///
/// Routes that point to mesh dictate how requests are routed within this
/// logical mesh boundary.
class Mesh {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Determines if envoy will insert internal debug headers into upstream
  /// requests.
  ///
  /// Other Envoy headers may still be injected. By default, envoy will not
  /// insert any debug headers.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENVOY_HEADERS_UNSPECIFIED" : Defaults to NONE.
  /// - "NONE" : Suppress envoy debug headers.
  /// - "DEBUG_HEADERS" : Envoy will insert default internal debug headers into
  /// upstream requests: x-envoy-attempt-count x-envoy-is-timeout-retry
  /// x-envoy-expected-rq-timeout-ms x-envoy-original-path
  /// x-envoy-upstream-stream-duration-ms
  core.String? envoyHeaders;

  /// If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to
  /// listen on the specified port of localhost (127.0.0.1) address.
  ///
  /// The SIDECAR proxy will expect all traffic to be redirected to this port
  /// regardless of its actual ip:port destination. If unset, a port '15001' is
  /// used as the interception port. This is applicable only for sidecar proxy
  /// deployments.
  ///
  /// Optional.
  core.int? interceptionPort;

  /// Set of label tags associated with the Mesh resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the Mesh resource.
  ///
  /// It matches pattern `projects / * /locations/global/meshes/`.
  ///
  /// Required.
  core.String? name;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Mesh({
    this.createTime,
    this.description,
    this.envoyHeaders,
    this.interceptionPort,
    this.labels,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Mesh.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          envoyHeaders: json_.containsKey('envoyHeaders')
              ? json_['envoyHeaders'] as core.String
              : null,
          interceptionPort: json_.containsKey('interceptionPort')
              ? json_['interceptionPort'] as core.int
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
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (envoyHeaders != null) 'envoyHeaders': envoyHeaders!,
        if (interceptionPort != null) 'interceptionPort': interceptionPort!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
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

/// ServiceBinding is the resource that defines a Service Directory Service to
/// be used in a BackendService resource.
class ServiceBinding {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Set of label tags associated with the ServiceBinding resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the ServiceBinding resource.
  ///
  /// It matches pattern `projects / *
  /// /locations/global/serviceBindings/service_binding_name`.
  ///
  /// Required.
  core.String? name;

  /// The full Service Directory Service name of the format projects / *
  /// /locations / * /namespaces / * /services / *
  ///
  /// Required.
  core.String? service;

  /// The unique identifier of the Service Directory Service against which the
  /// Service Binding resource is validated.
  ///
  /// This is populated when the Service Binding resource is used in another
  /// resource (like Backend Service). This is of the UUID4 format.
  ///
  /// Output only.
  core.String? serviceId;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceBinding({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.service,
    this.serviceId,
    this.updateTime,
  });

  ServiceBinding.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          serviceId: json_.containsKey('serviceId')
              ? json_['serviceId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (serviceId != null) 'serviceId': serviceId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ServiceLbPolicy holds global load balancing and traffic distribution
/// configuration that can be applied to a BackendService.
class ServiceLbPolicy {
  /// Configuration to automatically move traffic away for unhealthy IG/NEG for
  /// the associated Backend Service.
  ///
  /// Optional.
  ServiceLbPolicyAutoCapacityDrain? autoCapacityDrain;

  /// The timestamp when this resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Configuration related to health based failover.
  ///
  /// Optional.
  ServiceLbPolicyFailoverConfig? failoverConfig;

  /// Set of label tags associated with the ServiceLbPolicy resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The type of load balancing algorithm to be used.
  ///
  /// The default behavior is WATERFALL_BY_REGION.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LOAD_BALANCING_ALGORITHM_UNSPECIFIED" : The type of the loadbalancing
  /// algorithm is unspecified.
  /// - "SPRAY_TO_WORLD" : Balance traffic across all backends across the world
  /// proportionally based on capacity.
  /// - "SPRAY_TO_REGION" : Direct traffic to the nearest region with endpoints
  /// and capacity before spilling over to other regions and spread the traffic
  /// from each client to all the MIGs/NEGs in a region.
  /// - "WATERFALL_BY_REGION" : Direct traffic to the nearest region with
  /// endpoints and capacity before spilling over to other regions. All
  /// MIGs/NEGs within a region are evenly loaded but each client might not
  /// spread the traffic to all the MIGs/NEGs in the region.
  /// - "WATERFALL_BY_ZONE" : Attempt to keep traffic in a single zone closest
  /// to the client, before spilling over to other zones.
  core.String? loadBalancingAlgorithm;

  /// Name of the ServiceLbPolicy resource.
  ///
  /// It matches pattern
  /// `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  ///
  /// Required.
  core.String? name;

  /// The timestamp when this resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceLbPolicy({
    this.autoCapacityDrain,
    this.createTime,
    this.description,
    this.failoverConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.name,
    this.updateTime,
  });

  ServiceLbPolicy.fromJson(core.Map json_)
      : this(
          autoCapacityDrain: json_.containsKey('autoCapacityDrain')
              ? ServiceLbPolicyAutoCapacityDrain.fromJson(
                  json_['autoCapacityDrain']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          failoverConfig: json_.containsKey('failoverConfig')
              ? ServiceLbPolicyFailoverConfig.fromJson(json_['failoverConfig']
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
          loadBalancingAlgorithm: json_.containsKey('loadBalancingAlgorithm')
              ? json_['loadBalancingAlgorithm'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCapacityDrain != null) 'autoCapacityDrain': autoCapacityDrain!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (failoverConfig != null) 'failoverConfig': failoverConfig!,
        if (labels != null) 'labels': labels!,
        if (loadBalancingAlgorithm != null)
          'loadBalancingAlgorithm': loadBalancingAlgorithm!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Option to specify if an unhealthy IG/NEG should be considered for global
/// load balancing and traffic routing.
class ServiceLbPolicyAutoCapacityDrain {
  /// If set to 'True', an unhealthy IG/NEG will be set as drained.
  ///
  /// - An IG/NEG is considered unhealthy if less than 25% of the
  /// instances/endpoints in the IG/NEG are healthy. - This option will never
  /// result in draining more than 50% of the configured IGs/NEGs for the
  /// Backend Service.
  ///
  /// Optional.
  core.bool? enable;

  ServiceLbPolicyAutoCapacityDrain({
    this.enable,
  });

  ServiceLbPolicyAutoCapacityDrain.fromJson(core.Map json_)
      : this(
          enable:
              json_.containsKey('enable') ? json_['enable'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enable != null) 'enable': enable!,
      };
}

/// Option to specify health based failover behavior.
///
/// This is not related to Network load balancer FailoverPolicy.
class ServiceLbPolicyFailoverConfig {
  /// The percentage threshold that a load balancer will begin to send traffic
  /// to failover backends.
  ///
  /// If the percentage of endpoints in a MIG/NEG is smaller than this value,
  /// traffic would be sent to failover backends if possible. This field should
  /// be set to a value between 1 and 99. The default value is 50 for Global
  /// external HTTP(S) load balancer (classic) and Proxyless service mesh, and
  /// 70 for others.
  ///
  /// Optional.
  core.int? failoverHealthThreshold;

  ServiceLbPolicyFailoverConfig({
    this.failoverHealthThreshold,
  });

  ServiceLbPolicyFailoverConfig.fromJson(core.Map json_)
      : this(
          failoverHealthThreshold: json_.containsKey('failoverHealthThreshold')
              ? json_['failoverHealthThreshold'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failoverHealthThreshold != null)
          'failoverHealthThreshold': failoverHealthThreshold!,
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

/// TcpRoute is the resource defining how TCP traffic should be routed by a
/// Mesh/Gateway resource.
class TcpRoute {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Gateways defines a list of gateways this TcpRoute is attached to, as one
  /// of the routing rules to route the requests served by the gateway.
  ///
  /// Each gateway reference should match the pattern: `projects / *
  /// /locations/global/gateways/`
  ///
  /// Optional.
  core.List<core.String>? gateways;

  /// Set of label tags associated with the TcpRoute resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Meshes defines a list of meshes this TcpRoute is attached to, as one of
  /// the routing rules to route the requests served by the mesh.
  ///
  /// Each mesh reference should match the pattern: `projects / *
  /// /locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  ///
  /// Optional.
  core.List<core.String>? meshes;

  /// Name of the TcpRoute resource.
  ///
  /// It matches pattern `projects / *
  /// /locations/global/tcpRoutes/tcp_route_name>`.
  ///
  /// Required.
  core.String? name;

  /// Rules that define how traffic is routed and handled.
  ///
  /// At least one RouteRule must be supplied. If there are multiple rules then
  /// the action taken will be the first rule to match.
  ///
  /// Required.
  core.List<TcpRouteRouteRule>? rules;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  TcpRoute({
    this.createTime,
    this.description,
    this.gateways,
    this.labels,
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  TcpRoute.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gateways: json_.containsKey('gateways')
              ? (json_['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          meshes: json_.containsKey('meshes')
              ? (json_['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => TcpRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gateways != null) 'gateways': gateways!,
        if (labels != null) 'labels': labels!,
        if (meshes != null) 'meshes': meshes!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The specifications for routing traffic and applying associated policies.
class TcpRouteRouteAction {
  /// The destination services to which traffic should be forwarded.
  ///
  /// At least one destination service is required. Only one of route
  /// destination or original destination can be set.
  ///
  /// Optional.
  core.List<TcpRouteRouteDestination>? destinations;

  /// Specifies the idle timeout for the selected route.
  ///
  /// The idle timeout is defined as the period in which there are no bytes sent
  /// or received on either the upstream or downstream connection. If not set,
  /// the default idle timeout is 30 seconds. If set to 0s, the timeout will be
  /// disabled.
  ///
  /// Optional.
  core.String? idleTimeout;

  /// If true, Router will use the destination IP and port of the original
  /// connection as the destination of the request.
  ///
  /// Default is false. Only one of route destinations or original destination
  /// can be set.
  ///
  /// Optional.
  core.bool? originalDestination;

  TcpRouteRouteAction({
    this.destinations,
    this.idleTimeout,
    this.originalDestination,
  });

  TcpRouteRouteAction.fromJson(core.Map json_)
      : this(
          destinations: json_.containsKey('destinations')
              ? (json_['destinations'] as core.List)
                  .map((value) => TcpRouteRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
          originalDestination: json_.containsKey('originalDestination')
              ? json_['originalDestination'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
        if (originalDestination != null)
          'originalDestination': originalDestination!,
      };
}

/// Describe the destination for traffic to be routed to.
class TcpRouteRouteDestination {
  /// The URL of a BackendService to route traffic to.
  ///
  /// Required.
  core.String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced
  /// by the serviceName field.
  ///
  /// This is computed as: - weight/Sum(weights in this destination list). For
  /// non-zero values, there may be some epsilon from the exact proportion
  /// defined here depending on the precision an implementation supports. If
  /// only one serviceName is specified and it has a weight greater than 0, 100%
  /// of the traffic is forwarded to that backend. If weights are specified for
  /// any one service name, they need to be specified for all of them. If
  /// weights are unspecified for all services, then, traffic is distributed in
  /// equal proportions to all of them.
  ///
  /// Optional.
  core.int? weight;

  TcpRouteRouteDestination({
    this.serviceName,
    this.weight,
  });

  TcpRouteRouteDestination.fromJson(core.Map json_)
      : this(
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceName != null) 'serviceName': serviceName!,
        if (weight != null) 'weight': weight!,
      };
}

/// RouteMatch defines the predicate used to match requests to a given action.
///
/// Multiple match types are "OR"ed for evaluation. If no routeMatch field is
/// specified, this rule will unconditionally match traffic.
class TcpRouteRouteMatch {
  /// Must be specified in the CIDR range format.
  ///
  /// A CIDR range consists of an IP Address and a prefix length to construct
  /// the subnet mask. By default, the prefix length is 32 (i.e. matches a
  /// single IP address). Only IPV4 addresses are supported. Examples:
  /// "10.0.0.1" - matches against this exact IP address. "10.0.0.0/8" - matches
  /// against any IP address within the 10.0.0.0 subnet and 255.255.255.0 mask.
  /// "0.0.0.0/0" - matches against any IP address'.
  ///
  /// Required.
  core.String? address;

  /// Specifies the destination port to match against.
  ///
  /// Required.
  core.String? port;

  TcpRouteRouteMatch({
    this.address,
    this.port,
  });

  TcpRouteRouteMatch.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (port != null) 'port': port!,
      };
}

/// Specifies how to match traffic and how to route traffic when traffic is
/// matched.
class TcpRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  ///
  /// Required.
  TcpRouteRouteAction? action;

  /// RouteMatch defines the predicate used to match requests to a given action.
  ///
  /// Multiple match types are "OR"ed for evaluation. If no routeMatch field is
  /// specified, this rule will unconditionally match traffic.
  ///
  /// Optional.
  core.List<TcpRouteRouteMatch>? matches;

  TcpRouteRouteRule({
    this.action,
    this.matches,
  });

  TcpRouteRouteRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? TcpRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) => TcpRouteRouteMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (matches != null) 'matches': matches!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// TlsRoute defines how traffic should be routed based on SNI and other
/// matching L3 attributes.
class TlsRoute {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A free-text description of the resource.
  ///
  /// Max length 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Gateways defines a list of gateways this TlsRoute is attached to, as one
  /// of the routing rules to route the requests served by the gateway.
  ///
  /// Each gateway reference should match the pattern: `projects / *
  /// /locations/global/gateways/`
  ///
  /// Optional.
  core.List<core.String>? gateways;

  /// Set of label tags associated with the TlsRoute resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Meshes defines a list of meshes this TlsRoute is attached to, as one of
  /// the routing rules to route the requests served by the mesh.
  ///
  /// Each mesh reference should match the pattern: `projects / *
  /// /locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  ///
  /// Optional.
  core.List<core.String>? meshes;

  /// Name of the TlsRoute resource.
  ///
  /// It matches pattern `projects / *
  /// /locations/global/tlsRoutes/tls_route_name>`.
  ///
  /// Required.
  core.String? name;

  /// Rules that define how traffic is routed and handled.
  ///
  /// At least one RouteRule must be supplied. If there are multiple rules then
  /// the action taken will be the first rule to match.
  ///
  /// Required.
  core.List<TlsRouteRouteRule>? rules;

  /// Server-defined URL of this resource
  ///
  /// Output only.
  core.String? selfLink;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  TlsRoute({
    this.createTime,
    this.description,
    this.gateways,
    this.labels,
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  TlsRoute.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gateways: json_.containsKey('gateways')
              ? (json_['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          meshes: json_.containsKey('meshes')
              ? (json_['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => TlsRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gateways != null) 'gateways': gateways!,
        if (labels != null) 'labels': labels!,
        if (meshes != null) 'meshes': meshes!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The specifications for routing traffic and applying associated policies.
class TlsRouteRouteAction {
  /// The destination services to which traffic should be forwarded.
  ///
  /// At least one destination service is required.
  ///
  /// Required.
  core.List<TlsRouteRouteDestination>? destinations;

  /// Specifies the idle timeout for the selected route.
  ///
  /// The idle timeout is defined as the period in which there are no bytes sent
  /// or received on either the upstream or downstream connection. If not set,
  /// the default idle timeout is 1 hour. If set to 0s, the timeout will be
  /// disabled.
  ///
  /// Optional.
  core.String? idleTimeout;

  TlsRouteRouteAction({
    this.destinations,
    this.idleTimeout,
  });

  TlsRouteRouteAction.fromJson(core.Map json_)
      : this(
          destinations: json_.containsKey('destinations')
              ? (json_['destinations'] as core.List)
                  .map((value) => TlsRouteRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
      };
}

/// Describe the destination for traffic to be routed to.
class TlsRouteRouteDestination {
  /// The URL of a BackendService to route traffic to.
  ///
  /// Required.
  core.String? serviceName;

  /// Specifies the proportion of requests forwareded to the backend referenced
  /// by the service_name field.
  ///
  /// This is computed as: - weight/Sum(weights in destinations) Weights in all
  /// destinations does not need to sum up to 100.
  ///
  /// Optional.
  core.int? weight;

  TlsRouteRouteDestination({
    this.serviceName,
    this.weight,
  });

  TlsRouteRouteDestination.fromJson(core.Map json_)
      : this(
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceName != null) 'serviceName': serviceName!,
        if (weight != null) 'weight': weight!,
      };
}

/// RouteMatch defines the predicate used to match requests to a given action.
///
/// Multiple match types are "AND"ed for evaluation. If no routeMatch field is
/// specified, this rule will unconditionally match traffic.
class TlsRouteRouteMatch {
  /// ALPN (Application-Layer Protocol Negotiation) to match against.
  ///
  /// Examples: "http/1.1", "h2". At least one of sni_host and alpn is required.
  /// Up to 5 alpns across all matches can be set.
  ///
  /// Optional.
  core.List<core.String>? alpn;

  /// SNI (server name indicator) to match against.
  ///
  /// SNI will be matched against all wildcard domains, i.e. `www.example.com`
  /// will be first matched against `www.example.com`, then `*.example.com`,
  /// then `*.com.` Partial wildcards are not supported, and values like
  /// *w.example.com are invalid. At least one of sni_host and alpn is required.
  /// Up to 5 sni hosts across all matches can be set.
  ///
  /// Optional.
  core.List<core.String>? sniHost;

  TlsRouteRouteMatch({
    this.alpn,
    this.sniHost,
  });

  TlsRouteRouteMatch.fromJson(core.Map json_)
      : this(
          alpn: json_.containsKey('alpn')
              ? (json_['alpn'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sniHost: json_.containsKey('sniHost')
              ? (json_['sniHost'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpn != null) 'alpn': alpn!,
        if (sniHost != null) 'sniHost': sniHost!,
      };
}

/// Specifies how to match traffic and how to route traffic when traffic is
/// matched.
class TlsRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  ///
  /// Required.
  TlsRouteRouteAction? action;

  /// RouteMatch defines the predicate used to match requests to a given action.
  ///
  /// Multiple match types are "OR"ed for evaluation.
  ///
  /// Required.
  core.List<TlsRouteRouteMatch>? matches;

  TlsRouteRouteRule({
    this.action,
    this.matches,
  });

  TlsRouteRouteRule.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? TlsRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: json_.containsKey('matches')
              ? (json_['matches'] as core.List)
                  .map((value) => TlsRouteRouteMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (matches != null) 'matches': matches!,
      };
}

/// Specification of a port-based selector.
class TrafficPortSelector {
  /// A list of ports.
  ///
  /// Can be port numbers or port range (example, \[80-90\] specifies all ports
  /// from 80 to 90, including 80 and 90) or named ports or * to specify all
  /// ports. If the list is empty, all ports are selected.
  ///
  /// Optional.
  core.List<core.String>? ports;

  TrafficPortSelector({
    this.ports,
  });

  TrafficPortSelector.fromJson(core.Map json_)
      : this(
          ports: json_.containsKey('ports')
              ? (json_['ports'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ports != null) 'ports': ports!,
      };
}
