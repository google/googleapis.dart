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
///     - [ProjectsLocationsMeshesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServiceBindingsResource]
///     - [ProjectsLocationsTcpRoutesResource]
///     - [ProjectsLocationsTlsRoutesResource]
library networkservices.v1;

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
  ProjectsLocationsMeshesResource get meshes =>
      ProjectsLocationsMeshesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServiceBindingsResource get serviceBindings =>
      ProjectsLocationsServiceBindingsResource(_requester);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (endpointPolicyId != null) 'endpointPolicyId': [endpointPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EndpointPolicy.fromJson(
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListEndpointPoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (gatewayId != null) 'gatewayId': [gatewayId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/gateways';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Gateway.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/gateways';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGatewaysResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (grpcRouteId != null) 'grpcRouteId': [grpcRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GrpcRoute.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListGrpcRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (httpRouteId != null) 'httpRouteId': [httpRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpRoute.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListHttpRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (meshId != null) 'meshId': [meshId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/meshes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Mesh.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/meshes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMeshesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (serviceBindingId != null) 'serviceBindingId': [serviceBindingId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ServiceBinding.fromJson(
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListServiceBindingsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// created. E.g. TODO(Add an example).
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (tcpRouteId != null) 'tcpRouteId': [tcpRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TcpRoute.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTcpRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// created. E.g. TODO(Add an example).
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (tlsRouteId != null) 'tlsRouteId': [tlsRouteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TlsRoute.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTlsRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  EndpointMatcher.fromJson(core.Map _json)
      : this(
          metadataLabelMatcher: _json.containsKey('metadataLabelMatcher')
              ? EndpointMatcherMetadataLabelMatcher.fromJson(
                  _json['metadataLabelMatcher']
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
  /// P4 with selector exists and if a client with label connects), an error
  /// will be thrown.
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

  EndpointMatcherMetadataLabelMatcher.fromJson(core.Map _json)
      : this(
          metadataLabelMatchCriteria:
              _json.containsKey('metadataLabelMatchCriteria')
                  ? _json['metadataLabelMatchCriteria'] as core.String
                  : null,
          metadataLabels: _json.containsKey('metadataLabels')
              ? (_json['metadataLabels'] as core.List)
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

  EndpointMatcherMetadataLabelMatcherMetadataLabels.fromJson(core.Map _json)
      : this(
          labelName: _json.containsKey('labelName')
              ? _json['labelName'] as core.String
              : null,
          labelValue: _json.containsKey('labelValue')
              ? _json['labelValue'] as core.String
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

  EndpointPolicy.fromJson(core.Map _json)
      : this(
          authorizationPolicy: _json.containsKey('authorizationPolicy')
              ? _json['authorizationPolicy'] as core.String
              : null,
          clientTlsPolicy: _json.containsKey('clientTlsPolicy')
              ? _json['clientTlsPolicy'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          endpointMatcher: _json.containsKey('endpointMatcher')
              ? EndpointMatcher.fromJson(_json['endpointMatcher']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serverTlsPolicy: _json.containsKey('serverTlsPolicy')
              ? _json['serverTlsPolicy'] as core.String
              : null,
          trafficPortSelector: _json.containsKey('trafficPortSelector')
              ? TrafficPortSelector.fromJson(_json['trafficPortSelector']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

/// Gateway represents the configuration for a proxy, typically a load balancer.
///
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway.
class Gateway {
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

  /// One or more port numbers (1-65535), on which the Gateway will receive
  /// traffic.
  ///
  /// The proxy binds to the specified ports. Gateways of type
  /// 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH'
  /// listen on 0.0.0.0 and support multiple ports.
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
  /// Required. Immutable.
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
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.ports,
    this.scope,
    this.selfLink,
    this.serverTlsPolicy,
    this.type,
    this.updateTime,
  });

  Gateway.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ports: _json.containsKey('ports')
              ? (_json['ports'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          serverTlsPolicy: _json.containsKey('serverTlsPolicy')
              ? _json['serverTlsPolicy'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (ports != null) 'ports': ports!,
        if (scope != null) 'scope': scope!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (serverTlsPolicy != null) 'serverTlsPolicy': serverTlsPolicy!,
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
  /// wildcard label (*.). The wildcard label must appear by itself as the first
  /// label. Hostname can be "precise" which is a domain name without the
  /// terminating dot of a network host (e.g. "foo.example.com") or "wildcard",
  /// which is a domain name prefixed with a single wildcard label (e.g.
  /// *.example.com). Note that as per RFC1035 and RFC1123, a label must consist
  /// of lower case alphanumeric characters or '-', and must start and end with
  /// an alphanumeric character. No other punctuation is allowed. The routes
  /// associated with a Mesh or Gateway must have unique hostnames. If you
  /// attempt to attach multiple routes with conflicting hostnames, the
  /// configuration will be rejected. For example, while it is acceptable for
  /// routes for the hostnames "*.foo.bar.com" and "*.bar.com" to be associated
  /// with the same route, it is not possible to associate two routes both with
  /// "*.bar.com" or both with "bar.com". If a port is specified, then gRPC
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

  GrpcRoute.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          gateways: _json.containsKey('gateways')
              ? (_json['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hostnames: _json.containsKey('hostnames')
              ? (_json['hostnames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          meshes: _json.containsKey('meshes')
              ? (_json['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => GrpcRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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
  /// This is computed as: weight/Sum(weights in this destination list). For
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

  GrpcRouteDestination.fromJson(core.Map _json)
      : this(
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
          weight:
              _json.containsKey('weight') ? _json['weight'] as core.int : null,
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

  GrpcRouteFaultInjectionPolicy.fromJson(core.Map _json)
      : this(
          abort: _json.containsKey('abort')
              ? GrpcRouteFaultInjectionPolicyAbort.fromJson(
                  _json['abort'] as core.Map<core.String, core.dynamic>)
              : null,
          delay: _json.containsKey('delay')
              ? GrpcRouteFaultInjectionPolicyDelay.fromJson(
                  _json['delay'] as core.Map<core.String, core.dynamic>)
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

  GrpcRouteHeaderMatch.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
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

  GrpcRouteMethodMatch.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          grpcMethod: _json.containsKey('grpcMethod')
              ? _json['grpcMethod'] as core.String
              : null,
          grpcService: _json.containsKey('grpcService')
              ? _json['grpcService'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  GrpcRouteRetryPolicy.fromJson(core.Map _json)
      : this(
          numRetries: _json.containsKey('numRetries')
              ? _json['numRetries'] as core.int
              : null,
          retryConditions: _json.containsKey('retryConditions')
              ? (_json['retryConditions'] as core.List)
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

  /// Specifies the retry policy associated with this route.
  ///
  /// Optional.
  GrpcRouteRetryPolicy? retryPolicy;

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
    this.retryPolicy,
    this.timeout,
  });

  GrpcRouteRouteAction.fromJson(core.Map _json)
      : this(
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => GrpcRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          faultInjectionPolicy: _json.containsKey('faultInjectionPolicy')
              ? GrpcRouteFaultInjectionPolicy.fromJson(
                  _json['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          retryPolicy: _json.containsKey('retryPolicy')
              ? GrpcRouteRetryPolicy.fromJson(
                  _json['retryPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
        if (faultInjectionPolicy != null)
          'faultInjectionPolicy': faultInjectionPolicy!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
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

  GrpcRouteRouteMatch.fromJson(core.Map _json)
      : this(
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) => GrpcRouteHeaderMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          method: _json.containsKey('method')
              ? GrpcRouteMethodMatch.fromJson(
                  _json['method'] as core.Map<core.String, core.dynamic>)
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

  GrpcRouteRouteRule.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? GrpcRouteRouteAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: _json.containsKey('matches')
              ? (_json['matches'] as core.List)
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
  /// may be prefixed with a wildcard label (*.). The wildcard label must appear
  /// by itself as the first label. Hostname can be "precise" which is a domain
  /// name without the terminating dot of a network host (e.g.
  /// "foo.example.com") or "wildcard", which is a domain name prefixed with a
  /// single wildcard label (e.g. *.example.com). Note that as per RFC1035 and
  /// RFC1123, a label must consist of lower case alphanumeric characters or
  /// '-', and must start and end with an alphanumeric character. No other
  /// punctuation is allowed. The routes associated with a Mesh or Gateways must
  /// have unique hostnames. If you attempt to attach multiple routes with
  /// conflicting hostnames, the configuration will be rejected. For example,
  /// while it is acceptable for routes for the hostnames "*.foo.bar.com" and
  /// "*.bar.com" to be associated with the same Mesh (or Gateways under the
  /// same scope), it is not possible to associate two routes both with
  /// "*.bar.com" or both with "bar.com".
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

  HttpRoute.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          gateways: _json.containsKey('gateways')
              ? (_json['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hostnames: _json.containsKey('hostnames')
              ? (_json['hostnames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          meshes: _json.containsKey('meshes')
              ? (_json['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => HttpRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  HttpRouteCorsPolicy.fromJson(core.Map _json)
      : this(
          allowCredentials: _json.containsKey('allowCredentials')
              ? _json['allowCredentials'] as core.bool
              : null,
          allowHeaders: _json.containsKey('allowHeaders')
              ? (_json['allowHeaders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowMethods: _json.containsKey('allowMethods')
              ? (_json['allowMethods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowOriginRegexes: _json.containsKey('allowOriginRegexes')
              ? (_json['allowOriginRegexes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowOrigins: _json.containsKey('allowOrigins')
              ? (_json['allowOrigins'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          exposeHeaders: _json.containsKey('exposeHeaders')
              ? (_json['exposeHeaders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxAge: _json.containsKey('maxAge')
              ? _json['maxAge'] as core.String
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
  /// The URL of a BackendService to route traffic to.
  core.String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced
  /// by the serviceName field.
  ///
  /// This is computed as: weight/Sum(weights in this destination list). For
  /// non-zero values, there may be some epsilon from the exact proportion
  /// defined here depending on the precision an implementation supports. If
  /// only one serviceName is specified and it has a weight greater than 0, 100%
  /// of the traffic is forwarded to that backend. If weights are specified for
  /// any one service name, they need to be specified for all of them. If
  /// weights are unspecified for all services, then, traffic is distributed in
  /// equal proportions to all of them.
  core.int? weight;

  HttpRouteDestination({
    this.serviceName,
    this.weight,
  });

  HttpRouteDestination.fromJson(core.Map _json)
      : this(
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
          weight:
              _json.containsKey('weight') ? _json['weight'] as core.int : null,
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

  HttpRouteFaultInjectionPolicy.fromJson(core.Map _json)
      : this(
          abort: _json.containsKey('abort')
              ? HttpRouteFaultInjectionPolicyAbort.fromJson(
                  _json['abort'] as core.Map<core.String, core.dynamic>)
              : null,
          delay: _json.containsKey('delay')
              ? HttpRouteFaultInjectionPolicyDelay.fromJson(
                  _json['delay'] as core.Map<core.String, core.dynamic>)
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

  HttpRouteHeaderMatch.fromJson(core.Map _json)
      : this(
          exactMatch: _json.containsKey('exactMatch')
              ? _json['exactMatch'] as core.String
              : null,
          header: _json.containsKey('header')
              ? _json['header'] as core.String
              : null,
          invertMatch: _json.containsKey('invertMatch')
              ? _json['invertMatch'] as core.bool
              : null,
          prefixMatch: _json.containsKey('prefixMatch')
              ? _json['prefixMatch'] as core.String
              : null,
          presentMatch: _json.containsKey('presentMatch')
              ? _json['presentMatch'] as core.bool
              : null,
          rangeMatch: _json.containsKey('rangeMatch')
              ? HttpRouteHeaderMatchIntegerRange.fromJson(
                  _json['rangeMatch'] as core.Map<core.String, core.dynamic>)
              : null,
          regexMatch: _json.containsKey('regexMatch')
              ? _json['regexMatch'] as core.String
              : null,
          suffixMatch: _json.containsKey('suffixMatch')
              ? _json['suffixMatch'] as core.String
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

  HttpRouteHeaderMatchIntegerRange.fromJson(core.Map _json)
      : this(
          end: _json.containsKey('end') ? _json['end'] as core.int : null,
          start: _json.containsKey('start') ? _json['start'] as core.int : null,
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

  HttpRouteHeaderModifier.fromJson(core.Map _json)
      : this(
          add: _json.containsKey('add')
              ? (_json['add'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          remove: _json.containsKey('remove')
              ? (_json['remove'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          set: _json.containsKey('set')
              ? (_json['set'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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

  HttpRouteQueryParameterMatch.fromJson(core.Map _json)
      : this(
          exactMatch: _json.containsKey('exactMatch')
              ? _json['exactMatch'] as core.String
              : null,
          presentMatch: _json.containsKey('presentMatch')
              ? _json['presentMatch'] as core.bool
              : null,
          queryParameter: _json.containsKey('queryParameter')
              ? _json['queryParameter'] as core.String
              : null,
          regexMatch: _json.containsKey('regexMatch')
              ? _json['regexMatch'] as core.String
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

  HttpRouteRedirect.fromJson(core.Map _json)
      : this(
          hostRedirect: _json.containsKey('hostRedirect')
              ? _json['hostRedirect'] as core.String
              : null,
          httpsRedirect: _json.containsKey('httpsRedirect')
              ? _json['httpsRedirect'] as core.bool
              : null,
          pathRedirect: _json.containsKey('pathRedirect')
              ? _json['pathRedirect'] as core.String
              : null,
          portRedirect: _json.containsKey('portRedirect')
              ? _json['portRedirect'] as core.int
              : null,
          prefixRewrite: _json.containsKey('prefixRewrite')
              ? _json['prefixRewrite'] as core.String
              : null,
          responseCode: _json.containsKey('responseCode')
              ? _json['responseCode'] as core.String
              : null,
          stripQuery: _json.containsKey('stripQuery')
              ? _json['stripQuery'] as core.bool
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

  HttpRouteRequestMirrorPolicy({
    this.destination,
  });

  HttpRouteRequestMirrorPolicy.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? HttpRouteDestination.fromJson(
                  _json['destination'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
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

  HttpRouteRetryPolicy.fromJson(core.Map _json)
      : this(
          numRetries: _json.containsKey('numRetries')
              ? _json['numRetries'] as core.int
              : null,
          perTryTimeout: _json.containsKey('perTryTimeout')
              ? _json['perTryTimeout'] as core.String
              : null,
          retryConditions: _json.containsKey('retryConditions')
              ? (_json['retryConditions'] as core.List)
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

  /// If set, the request is directed as configured by this field.
  HttpRouteRedirect? redirect;

  /// The specification for modifying the headers of a matching request prior to
  /// delivery of the request to the destination.
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
  HttpRouteHeaderModifier? responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  HttpRouteRetryPolicy? retryPolicy;

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
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
  });

  HttpRouteRouteAction.fromJson(core.Map _json)
      : this(
          corsPolicy: _json.containsKey('corsPolicy')
              ? HttpRouteCorsPolicy.fromJson(
                  _json['corsPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => HttpRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          faultInjectionPolicy: _json.containsKey('faultInjectionPolicy')
              ? HttpRouteFaultInjectionPolicy.fromJson(
                  _json['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          redirect: _json.containsKey('redirect')
              ? HttpRouteRedirect.fromJson(
                  _json['redirect'] as core.Map<core.String, core.dynamic>)
              : null,
          requestHeaderModifier: _json.containsKey('requestHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(_json['requestHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestMirrorPolicy: _json.containsKey('requestMirrorPolicy')
              ? HttpRouteRequestMirrorPolicy.fromJson(
                  _json['requestMirrorPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          responseHeaderModifier: _json.containsKey('responseHeaderModifier')
              ? HttpRouteHeaderModifier.fromJson(_json['responseHeaderModifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          retryPolicy: _json.containsKey('retryPolicy')
              ? HttpRouteRetryPolicy.fromJson(
                  _json['retryPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          timeout: _json.containsKey('timeout')
              ? _json['timeout'] as core.String
              : null,
          urlRewrite: _json.containsKey('urlRewrite')
              ? HttpRouteURLRewrite.fromJson(
                  _json['urlRewrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (corsPolicy != null) 'corsPolicy': corsPolicy!,
        if (destinations != null) 'destinations': destinations!,
        if (faultInjectionPolicy != null)
          'faultInjectionPolicy': faultInjectionPolicy!,
        if (redirect != null) 'redirect': redirect!,
        if (requestHeaderModifier != null)
          'requestHeaderModifier': requestHeaderModifier!,
        if (requestMirrorPolicy != null)
          'requestMirrorPolicy': requestMirrorPolicy!,
        if (responseHeaderModifier != null)
          'responseHeaderModifier': responseHeaderModifier!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
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

  HttpRouteRouteMatch.fromJson(core.Map _json)
      : this(
          fullPathMatch: _json.containsKey('fullPathMatch')
              ? _json['fullPathMatch'] as core.String
              : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) => HttpRouteHeaderMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ignoreCase: _json.containsKey('ignoreCase')
              ? _json['ignoreCase'] as core.bool
              : null,
          prefixMatch: _json.containsKey('prefixMatch')
              ? _json['prefixMatch'] as core.String
              : null,
          queryParameters: _json.containsKey('queryParameters')
              ? (_json['queryParameters'] as core.List)
                  .map((value) => HttpRouteQueryParameterMatch.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regexMatch: _json.containsKey('regexMatch')
              ? _json['regexMatch'] as core.String
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

  HttpRouteRouteRule.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? HttpRouteRouteAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: _json.containsKey('matches')
              ? (_json['matches'] as core.List)
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

  HttpRouteURLRewrite.fromJson(core.Map _json)
      : this(
          hostRewrite: _json.containsKey('hostRewrite')
              ? _json['hostRewrite'] as core.String
              : null,
          pathPrefixRewrite: _json.containsKey('pathPrefixRewrite')
              ? _json['pathPrefixRewrite'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostRewrite != null) 'hostRewrite': hostRewrite!,
        if (pathPrefixRewrite != null) 'pathPrefixRewrite': pathPrefixRewrite!,
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

  ListEndpointPoliciesResponse.fromJson(core.Map _json)
      : this(
          endpointPolicies: _json.containsKey('endpointPolicies')
              ? (_json['endpointPolicies'] as core.List)
                  .map((value) => EndpointPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListGatewaysResponse({
    this.gateways,
    this.nextPageToken,
  });

  ListGatewaysResponse.fromJson(core.Map _json)
      : this(
          gateways: _json.containsKey('gateways')
              ? (_json['gateways'] as core.List)
                  .map((value) => Gateway.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gateways != null) 'gateways': gateways!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListGrpcRoutesResponse.fromJson(core.Map _json)
      : this(
          grpcRoutes: _json.containsKey('grpcRoutes')
              ? (_json['grpcRoutes'] as core.List)
                  .map((value) => GrpcRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListHttpRoutesResponse.fromJson(core.Map _json)
      : this(
          httpRoutes: _json.containsKey('httpRoutes')
              ? (_json['httpRoutes'] as core.List)
                  .map((value) => HttpRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpRoutes != null) 'httpRoutes': httpRoutes!,
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

  ListMeshesResponse.fromJson(core.Map _json)
      : this(
          meshes: _json.containsKey('meshes')
              ? (_json['meshes'] as core.List)
                  .map((value) => Mesh.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListServiceBindingsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          serviceBindings: _json.containsKey('serviceBindings')
              ? (_json['serviceBindings'] as core.List)
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

  ListTcpRoutesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tcpRoutes: _json.containsKey('tcpRoutes')
              ? (_json['tcpRoutes'] as core.List)
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

  ListTlsRoutesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tlsRoutes: _json.containsKey('tlsRoutes')
              ? (_json['tlsRoutes'] as core.List)
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

/// A resource that represents Google Cloud Platform location.
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

  /// If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to
  /// listen on the specified port of localhost (127.0.0.1) address.
  ///
  /// The SIDECAR proxy will expect all traffic to be redirected to this port
  /// regardless of its actual ip:port destination. If unset, a port '15001' is
  /// used as the interception port. This will is applicable only for sidecar
  /// proxy deployments.
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
    this.interceptionPort,
    this.labels,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Mesh.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          interceptionPort: _json.containsKey('interceptionPort')
              ? _json['interceptionPort'] as core.int
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
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
  /// /locations/global/serviceBindings/service_binding_name>`.
  ///
  /// Required.
  core.String? name;

  /// The full service directory service name of the format /projects / *
  /// /locations / * /namespaces / * /services / *
  ///
  /// Required.
  core.String? service;

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
    this.updateTime,
  });

  ServiceBinding.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  TcpRoute.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          gateways: _json.containsKey('gateways')
              ? (_json['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          meshes: _json.containsKey('meshes')
              ? (_json['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => TcpRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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
  /// At least one destination service is required.
  ///
  /// Optional.
  core.List<TcpRouteRouteDestination>? destinations;

  /// If true, Router will use the destination IP and port of the original
  /// connection as the destination of the request.
  ///
  /// Default is false.
  ///
  /// Optional.
  core.bool? originalDestination;

  TcpRouteRouteAction({
    this.destinations,
    this.originalDestination,
  });

  TcpRouteRouteAction.fromJson(core.Map _json)
      : this(
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => TcpRouteRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          originalDestination: _json.containsKey('originalDestination')
              ? _json['originalDestination'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
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
  /// This is computed as: weight/Sum(weights in this destination list). For
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

  TcpRouteRouteDestination.fromJson(core.Map _json)
      : this(
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
          weight:
              _json.containsKey('weight') ? _json['weight'] as core.int : null,
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

  TcpRouteRouteMatch.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.String : null,
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

  TcpRouteRouteRule.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? TcpRouteRouteAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: _json.containsKey('matches')
              ? (_json['matches'] as core.List)
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
    this.meshes,
    this.name,
    this.rules,
    this.selfLink,
    this.updateTime,
  });

  TlsRoute.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          gateways: _json.containsKey('gateways')
              ? (_json['gateways'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          meshes: _json.containsKey('meshes')
              ? (_json['meshes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
                  .map((value) => TlsRouteRouteRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gateways != null) 'gateways': gateways!,
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

  TlsRouteRouteAction({
    this.destinations,
  });

  TlsRouteRouteAction.fromJson(core.Map _json)
      : this(
          destinations: _json.containsKey('destinations')
              ? (_json['destinations'] as core.List)
                  .map((value) => TlsRouteRouteDestination.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinations != null) 'destinations': destinations!,
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
  /// This is computed as: weight/Sum(weights in destinations) Weights in all
  /// destinations does not need to sum up to 100.
  ///
  /// Optional.
  core.int? weight;

  TlsRouteRouteDestination({
    this.serviceName,
    this.weight,
  });

  TlsRouteRouteDestination.fromJson(core.Map _json)
      : this(
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
          weight:
              _json.containsKey('weight') ? _json['weight'] as core.int : null,
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
  /// SNI will be matched against all wildcard domains, i.e. www.example.com
  /// will be first matched against www.example.com, then *.example.com, then
  /// *.com. Partial wildcards are not supported, and values like *w.example.com
  /// are invalid. At least one of sni_host and alpn is required. Up to 5 sni
  /// hosts across all matches can be set.
  ///
  /// Optional.
  core.List<core.String>? sniHost;

  TlsRouteRouteMatch({
    this.alpn,
    this.sniHost,
  });

  TlsRouteRouteMatch.fromJson(core.Map _json)
      : this(
          alpn: _json.containsKey('alpn')
              ? (_json['alpn'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sniHost: _json.containsKey('sniHost')
              ? (_json['sniHost'] as core.List)
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

  TlsRouteRouteRule.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? TlsRouteRouteAction.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          matches: _json.containsKey('matches')
              ? (_json['matches'] as core.List)
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

  TrafficPortSelector.fromJson(core.Map _json)
      : this(
          ports: _json.containsKey('ports')
              ? (_json['ports'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ports != null) 'ports': ports!,
      };
}
