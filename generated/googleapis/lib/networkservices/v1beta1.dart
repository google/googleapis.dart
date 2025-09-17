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

/// Network Services API - v1beta1
///
/// For more information, see <https://cloud.google.com/networking>
///
/// Create an instance of [NetworkServicesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAuthzExtensionsResource]
///     - [ProjectsLocationsEndpointPoliciesResource]
///     - [ProjectsLocationsGatewaysResource]
///       - [ProjectsLocationsGatewaysRouteViewsResource]
///     - [ProjectsLocationsGrpcRoutesResource]
///     - [ProjectsLocationsHttpRoutesResource]
///     - [ProjectsLocationsLbEdgeExtensionsResource]
///     - [ProjectsLocationsLbRouteExtensionsResource]
///     - [ProjectsLocationsLbTrafficExtensionsResource]
///     - [ProjectsLocationsMeshesResource]
///       - [ProjectsLocationsMeshesRouteViewsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServiceBindingsResource]
///     - [ProjectsLocationsServiceLbPoliciesResource]
///     - [ProjectsLocationsTcpRoutesResource]
///     - [ProjectsLocationsTlsRoutesResource]
///     - [ProjectsLocationsWasmPluginsResource]
///       - [ProjectsLocationsWasmPluginsVersionsResource]
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

  NetworkServicesApi(
    http.Client client, {
    core.String rootUrl = 'https://networkservices.googleapis.com/',
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

  ProjectsLocationsAuthzExtensionsResource get authzExtensions =>
      ProjectsLocationsAuthzExtensionsResource(_requester);
  ProjectsLocationsEndpointPoliciesResource get endpointPolicies =>
      ProjectsLocationsEndpointPoliciesResource(_requester);
  ProjectsLocationsGatewaysResource get gateways =>
      ProjectsLocationsGatewaysResource(_requester);
  ProjectsLocationsGrpcRoutesResource get grpcRoutes =>
      ProjectsLocationsGrpcRoutesResource(_requester);
  ProjectsLocationsHttpRoutesResource get httpRoutes =>
      ProjectsLocationsHttpRoutesResource(_requester);
  ProjectsLocationsLbEdgeExtensionsResource get lbEdgeExtensions =>
      ProjectsLocationsLbEdgeExtensionsResource(_requester);
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
  ProjectsLocationsWasmPluginsResource get wasmPlugins =>
      ProjectsLocationsWasmPluginsResource(_requester);

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthzExtensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthzExtensionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `AuthzExtension` resource in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `AuthzExtension` resource.
  /// Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [authzExtensionId] - Required. User-provided ID of the `AuthzExtension`
  /// resource to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    AuthzExtension request,
    core.String parent, {
    core.String? authzExtensionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (authzExtensionId != null) 'authzExtensionId': [authzExtensionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/authzExtensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `AuthzExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `AuthzExtension` resource to delete.
  /// Must be in the format
  /// `projects/{project}/locations/{location}/authzExtensions/{authz_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of the specified `AuthzExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `AuthzExtension` resource to get. Must be
  /// in the format
  /// `projects/{project}/locations/{location}/authzExtensions/{authz_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzExtensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthzExtension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthzExtension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuthzExtension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `AuthzExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `AuthzExtension` resources are listed. These values are specified in the
  /// following format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint about how to order the results.
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
  /// Completes with a [ListAuthzExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthzExtensionsResponse> list(
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/authzExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthzExtensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of the specified `AuthzExtension` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Name of the `AuthzExtension` resource in
  /// the following format:
  /// `projects/{project}/locations/{location}/authzExtensions/{authz_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Used to specify the fields to be overwritten in
  /// the `AuthzExtension` resource by the update. The fields specified in the
  /// `update_mask` are relative to the resource, not the full request. A field
  /// is overwritten if it is in the mask. If the user does not specify a mask,
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
    AuthzExtension request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EndpointPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/endpointPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndpointPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single EndpointPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the EndpointPolicy resource. It matches
  /// pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGatewaysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGatewaysRouteViewsResource get routeViews =>
      ProjectsLocationsGatewaysRouteViewsResource(_requester);

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/gateways';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<Gateway> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Gateway.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/gateways';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGatewaysResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Gateway.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the Gateway resource. It matches pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGatewaysRouteViewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGatewaysRouteViewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a single RouteView of a Gateway.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the GatewayRouteView resource. Formats:
  /// projects/{project_number}/locations/{location}/gateways/{gateway}/routeViews/{route_view}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+/routeViews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GatewayRouteView].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GatewayRouteView> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GatewayRouteView.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists RouteViews
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Gateway to which a Route is associated. Formats:
  /// projects/{project_number}/locations/{location}/gateways/{gateway}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gateways/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of GatewayRouteViews to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListGatewayRouteViewsResponse` Indicates that this is a continuation of a
  /// prior `ListGatewayRouteViews` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGatewayRouteViewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGatewayRouteViewsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/routeViews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGatewayRouteViewsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<GrpcRoute> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/grpcRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGrpcRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single GrpcRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the GrpcRoute resource. It matches pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<HttpRoute> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/httpRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHttpRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single HttpRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the HttpRoute resource. It matches pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLbEdgeExtensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLbEdgeExtensionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `LbEdgeExtension` resource in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `LbEdgeExtension`
  /// resource. Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [lbEdgeExtensionId] - Required. User-provided ID of the `LbEdgeExtension`
  /// resource to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    LbEdgeExtension request,
    core.String parent, {
    core.String? lbEdgeExtensionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (lbEdgeExtensionId != null) 'lbEdgeExtensionId': [lbEdgeExtensionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbEdgeExtensions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `LbEdgeExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `LbEdgeExtension` resource to delete.
  /// Must be in the format
  /// `projects/{project}/locations/{location}/lbEdgeExtensions/{lb_edge_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbEdgeExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of the specified `LbEdgeExtension` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `LbEdgeExtension` resource to get. Must
  /// be in the format
  /// `projects/{project}/locations/{location}/lbEdgeExtensions/{lb_edge_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbEdgeExtensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LbEdgeExtension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LbEdgeExtension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LbEdgeExtension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `LbEdgeExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `LbEdgeExtension` resources are listed. These values are specified in the
  /// following format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint about how to order the results.
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
  /// Completes with a [ListLbEdgeExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLbEdgeExtensionsResponse> list(
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbEdgeExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLbEdgeExtensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of the specified `LbEdgeExtension` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Name of the `LbEdgeExtension` resource in
  /// the following format:
  /// `projects/{project}/locations/{location}/lbEdgeExtensions/{lb_edge_extension}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lbEdgeExtensions/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Used to specify the fields to be overwritten in
  /// the `LbEdgeExtension` resource by the update. The fields specified in the
  /// `update_mask` are relative to the resource, not the full request. A field
  /// is overwritten if it is in the mask. If the user does not specify a mask,
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
    LbEdgeExtension request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbRouteExtensions';

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
  /// guarantees that for 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LbRouteExtension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `LbRouteExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `LbRouteExtension` resources are listed. These values are specified in the
  /// following format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint about how to order the results.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbRouteExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLbRouteExtensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Used to specify the fields to be overwritten in
  /// the `LbRouteExtension` resource by the update. The fields specified in the
  /// `update_mask` are relative to the resource, not the full request. A field
  /// is overwritten if it is in the mask. If the user does not specify a mask,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbTrafficExtensions';

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
  /// guarantees that for 60 minutes after the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LbTrafficExtension.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `LbTrafficExtension` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// `LbTrafficExtension` resources are listed. These values are specified in
  /// the following format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint about how to order the results.
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/lbTrafficExtensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLbTrafficExtensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// guarantees that for 60 minutes since the first request. For example,
  /// consider a situation where you make an initial request and the request
  /// times out. If you make the request again with the same request ID, the
  /// server ignores the second request This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Used to specify the fields to be overwritten in
  /// the `LbTrafficExtension` resource by the update. The fields specified in
  /// the `update_mask` are relative to the resource, not the full request. A
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

  ProjectsLocationsMeshesRouteViewsResource get routeViews =>
      ProjectsLocationsMeshesRouteViewsResource(_requester);

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/meshes';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<Mesh> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Mesh.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/meshes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMeshesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Mesh.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the Mesh resource. It matches pattern
  /// `projects / * /locations/global/meshes/`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMeshesRouteViewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMeshesRouteViewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a single RouteView of a Mesh.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the MeshRouteView resource. Format:
  /// projects/{project_number}/locations/{location}/meshes/{mesh}/routeViews/{route_view}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+/routeViews/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MeshRouteView].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MeshRouteView> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MeshRouteView.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists RouteViews
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Mesh to which a Route is associated. Format:
  /// projects/{project_number}/locations/{location}/meshes/{mesh}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/meshes/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of MeshRouteViews to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListMeshRouteViewsResponse`
  /// Indicates that this is a continuation of a prior `ListMeshRouteViews`
  /// call, and that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMeshRouteViewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMeshRouteViewsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/routeViews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMeshRouteViewsResponse.fromJson(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

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
  /// the format `projects / * /locations / * `.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

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
  /// format `projects / * /locations / * /serviceBindings / * `.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// format `projects / * /locations / * /serviceBindings / * `.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ServiceBinding in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// ServiceBindings should be listed, specified in the format `projects / *
  /// /locations / * `.
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/serviceBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ServiceBinding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the ServiceBinding resource. It matches
  /// pattern `projects / * /locations / * /serviceBindings/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceBindings/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServiceBinding resource by the update. The fields
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
    ServiceBinding request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/serviceLbPolicies';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceLbPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/serviceLbPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceLbPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ServiceLbPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the ServiceLbPolicy resource. It matches
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<TcpRoute> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tcpRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTcpRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single TcpRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the TcpRoute resource. It matches pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  async.Future<TlsRoute> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests. Otherwise if one of the locations
  /// is down or unreachable, the Aggregated List request will fail.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tlsRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTlsRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single TlsRoute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the TlsRoute resource. It matches pattern
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWasmPluginsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWasmPluginsVersionsResource get versions =>
      ProjectsLocationsWasmPluginsVersionsResource(_requester);

  ProjectsLocationsWasmPluginsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `WasmPlugin` resource in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `WasmPlugin` resource.
  /// Must be in the format `projects/{project}/locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [wasmPluginId] - Required. User-provided ID of the `WasmPlugin` resource
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
    WasmPlugin request,
    core.String parent, {
    core.String? wasmPluginId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (wasmPluginId != null) 'wasmPluginId': [wasmPluginId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/wasmPlugins';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `WasmPlugin` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `WasmPlugin` resource to delete. Must be
  /// in the format
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+$`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of the specified `WasmPlugin` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `WasmPlugin` resource to get. Must be in
  /// the format
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+$`.
  ///
  /// [view] - Determines how much data must be returned in the response. See
  /// \[AIP-157\](https://google.aip.dev/157).
  /// Possible string values are:
  /// - "WASM_PLUGIN_VIEW_UNSPECIFIED" : Unspecified value. Do not use.
  /// - "WASM_PLUGIN_VIEW_BASIC" : If specified in the `GET` request for a
  /// `WasmPlugin` resource, the server's response includes just the
  /// `WasmPlugin` resource.
  /// - "WASM_PLUGIN_VIEW_FULL" : If specified in the `GET` request for a
  /// `WasmPlugin` resource, the server's response includes the `WasmPlugin`
  /// resource with all its versions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WasmPlugin].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WasmPlugin> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WasmPlugin.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `WasmPlugin` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the `WasmPlugin`
  /// resources are listed, specified in the following format:
  /// `projects/{project}/locations/global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of `WasmPlugin` resources to return per call.
  /// If not specified, at most 50 `WasmPlugin` resources are returned. The
  /// maximum value is 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - The value returned by the last `ListWasmPluginsResponse`
  /// call. Indicates that this is a continuation of a prior `ListWasmPlugins`
  /// call, and that the next page of data is to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWasmPluginsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWasmPluginsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/wasmPlugins';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWasmPluginsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of the specified `WasmPlugin` resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the `WasmPlugin` resource in the following
  /// format:
  /// `projects/{project}/locations/{location}/wasmPlugins/{wasm_plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Used to specify the fields to be overwritten in
  /// the `WasmPlugin` resource by the update. The fields specified in the
  /// `update_mask` field are relative to the resource, not the full request. An
  /// omitted `update_mask` field is treated as an implied `update_mask` field
  /// equivalent to all fields that are populated (that have a non-empty value).
  /// The `update_mask` field supports a special value `*`, which means that
  /// each field in the given `WasmPlugin` resource (including the empty ones)
  /// replaces the current value.
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
    WasmPlugin request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWasmPluginsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWasmPluginsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `WasmPluginVersion` resource in a given project and
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `WasmPluginVersion`
  /// resource. Must be in the format
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+$`.
  ///
  /// [wasmPluginVersionId] - Required. User-provided ID of the
  /// `WasmPluginVersion` resource to be created.
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
    WasmPluginVersion request,
    core.String parent, {
    core.String? wasmPluginVersionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (wasmPluginVersionId != null)
        'wasmPluginVersionId': [wasmPluginVersionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `WasmPluginVersion` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `WasmPluginVersion` resource to delete.
  /// Must be in the format
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}/versions/{wasm_plugin_version}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+/versions/\[^/\]+$`.
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of the specified `WasmPluginVersion` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `WasmPluginVersion` resource to get. Must
  /// be in the format
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}/versions/{wasm_plugin_version}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WasmPluginVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WasmPluginVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WasmPluginVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `WasmPluginVersion` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `WasmPlugin` resource whose `WasmPluginVersion`s
  /// are listed, specified in the following format:
  /// `projects/{project}/locations/global/wasmPlugins/{wasm_plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/wasmPlugins/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of `WasmPluginVersion` resources to return per
  /// call. If not specified, at most 50 `WasmPluginVersion` resources are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListWasmPluginVersionsResponse` call. Indicates that this is a
  /// continuation of a prior `ListWasmPluginVersions` call, and that the next
  /// page of data is to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWasmPluginVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWasmPluginVersionsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWasmPluginVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// `AuthzExtension` is a resource that allows traffic forwarding to a callout
/// backend service to make an authorization decision.
typedef AuthzExtension = $AuthzExtension;

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
  MetadataLabelMatcher? metadataLabelMatcher;

  EndpointMatcher({this.metadataLabelMatcher});

  EndpointMatcher.fromJson(core.Map json_)
    : this(
        metadataLabelMatcher:
            json_.containsKey('metadataLabelMatcher')
                ? MetadataLabelMatcher.fromJson(
                  json_['metadataLabelMatcher']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metadataLabelMatcher != null)
      'metadataLabelMatcher': metadataLabelMatcher!,
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

  /// Identifier.
  ///
  /// Name of the EndpointPolicy resource. It matches pattern
  /// `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  core.String? name;

  /// A URL referring to a SecurityPolicy resource.
  ///
  /// SecurityPolicy is used to enforce rate limiting policy on the inbound
  /// traffic at the identified backends. If this field is not set, rate
  /// limiting is disabled for this endpoint.
  ///
  /// Optional.
  core.String? securityPolicy;

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
    this.securityPolicy,
    this.serverTlsPolicy,
    this.trafficPortSelector,
    this.type,
    this.updateTime,
  });

  EndpointPolicy.fromJson(core.Map json_)
    : this(
        authorizationPolicy: json_['authorizationPolicy'] as core.String?,
        clientTlsPolicy: json_['clientTlsPolicy'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        endpointMatcher:
            json_.containsKey('endpointMatcher')
                ? EndpointMatcher.fromJson(
                  json_['endpointMatcher']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        securityPolicy: json_['securityPolicy'] as core.String?,
        serverTlsPolicy: json_['serverTlsPolicy'] as core.String?,
        trafficPortSelector:
            json_.containsKey('trafficPortSelector')
                ? TrafficPortSelector.fromJson(
                  json_['trafficPortSelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
    if (securityPolicy != null) 'securityPolicy': securityPolicy!,
    if (serverTlsPolicy != null) 'serverTlsPolicy': serverTlsPolicy!,
    if (trafficPortSelector != null)
      'trafficPortSelector': trafficPortSelector!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A single extension chain wrapper that contains the match conditions and
/// extensions to execute.
class ExtensionChain {
  /// A set of extensions to execute for the matching request.
  ///
  /// At least one extension is required. Up to 3 extensions can be defined for
  /// each extension chain for `LbTrafficExtension` resource. `LbRouteExtension`
  /// and `LbEdgeExtension` chains are limited to 1 extension per extension
  /// chain.
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

  ExtensionChain({this.extensions, this.matchCondition, this.name});

  ExtensionChain.fromJson(core.Map json_)
    : this(
        extensions:
            (json_['extensions'] as core.List?)
                ?.map(
                  (value) => ExtensionChainExtension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        matchCondition:
            json_.containsKey('matchCondition')
                ? ExtensionChainMatchCondition.fromJson(
                  json_['matchCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (extensions != null) 'extensions': extensions!,
    if (matchCondition != null) 'matchCondition': matchCondition!,
    if (name != null) 'name': name!,
  };
}

/// A single extension in the chain to execute for the matching request.
class ExtensionChainExtension {
  /// When set to `TRUE`, the response from an extension service is allowed to
  /// set the `com.google.envoy.dynamic_forwarding` namespace in the dynamic
  /// metadata.
  ///
  /// This field is not supported for plugin extensions. Setting it results in a
  /// validation error.
  ///
  /// Optional.
  core.bool? allowDynamicForwarding;

  /// The `:authority` header in the gRPC request sent from Envoy to the
  /// extension service.
  ///
  /// Required for Callout extensions. This field is not supported for plugin
  /// extensions. Setting it results in a validation error.
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

  /// The metadata provided here is included as part of the `metadata_context`
  /// (of type `google.protobuf.Struct`) in the `ProcessingRequest` message sent
  /// to the extension server.
  ///
  /// The metadata is available under the namespace `com.google....`. For
  /// example:
  /// `com.google.lb_traffic_extension.lbtrafficextension1.chain1.ext1`. The
  /// following variables are supported in the metadata: `{forwarding_rule_id}`
  /// - substituted with the forwarding rule's fully qualified resource name.
  /// This field must not be set for plugin extensions. Setting it results in a
  /// validation error. You can set metadata at either the resource level or the
  /// extension level. The extension level metadata is recommended because you
  /// can pass a different set of metadata through each extension to the
  /// backend. This field is subject to following limitations: * The total size
  /// of the metadata must be less than 1KiB. * The total number of keys in the
  /// metadata must be less than 16. * The length of each key must be less than
  /// 64 characters. * The length of each value must be less than 1024
  /// characters. * All values must be strings.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The name for this extension.
  ///
  /// The name is logged as part of the HTTP request logs. The name must conform
  /// with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first
  /// character must be a letter and the last a letter or a number.
  ///
  /// Required.
  core.String? name;

  /// Configures the send mode for request body processing.
  ///
  /// The field can only be set if `supported_events` includes `REQUEST_BODY`.
  /// If `supported_events` includes `REQUEST_BODY`, but
  /// `request_body_send_mode` is unset, the default value `STREAMED` is used.
  /// When this field is set to `FULL_DUPLEX_STREAMED`, `supported_events` must
  /// include both `REQUEST_BODY` and `REQUEST_TRAILERS`. This field can be set
  /// only for `LbTrafficExtension` and `LbRouteExtension` resources, and only
  /// when the `service` field of the extension points to a `BackendService`.
  /// Only `FULL_DUPLEX_STREAMED` mode is supported for `LbRouteExtension`
  /// resources.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BODY_SEND_MODE_UNSPECIFIED" : Default value. Do not use.
  /// - "BODY_SEND_MODE_STREAMED" : Calls to the extension are executed in the
  /// streamed mode. Subsequent chunks will be sent only after the previous
  /// chunks have been processed. The content of the body chunks is sent one way
  /// to the extension. Extension may send modified chunks back. This is the
  /// default value if the processing mode is not specified.
  /// - "BODY_SEND_MODE_FULL_DUPLEX_STREAMED" : Calls are executed in the full
  /// duplex mode. Subsequent chunks will be sent for processing without waiting
  /// for the response for the previous chunk or for the response for
  /// `REQUEST_HEADERS` event. Extension can freely modify or chunk the body
  /// contents. If the extension doesn't send the body contents back, the next
  /// extension in the chain or the upstream will receive an empty body.
  core.String? requestBodySendMode;

  /// Configures the send mode for response processing.
  ///
  /// If unspecified, the default value `STREAMED` is used. When this field is
  /// set to `FULL_DUPLEX_STREAMED`, `supported_events` must include both
  /// `RESPONSE_BODY` and `RESPONSE_TRAILERS`. This field can be set only for
  /// `LbTrafficExtension` resources, and only when the `service` field of the
  /// extension points to a `BackendService`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BODY_SEND_MODE_UNSPECIFIED" : Default value. Do not use.
  /// - "BODY_SEND_MODE_STREAMED" : Calls to the extension are executed in the
  /// streamed mode. Subsequent chunks will be sent only after the previous
  /// chunks have been processed. The content of the body chunks is sent one way
  /// to the extension. Extension may send modified chunks back. This is the
  /// default value if the processing mode is not specified.
  /// - "BODY_SEND_MODE_FULL_DUPLEX_STREAMED" : Calls are executed in the full
  /// duplex mode. Subsequent chunks will be sent for processing without waiting
  /// for the response for the previous chunk or for the response for
  /// `REQUEST_HEADERS` event. Extension can freely modify or chunk the body
  /// contents. If the extension doesn't send the body contents back, the next
  /// extension in the chain or the upstream will receive an empty body.
  core.String? responseBodySendMode;

  /// The reference to the service that runs the extension.
  ///
  /// To configure a callout extension, `service` must be a fully-qualified
  /// reference to a
  /// [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)
  /// in the format:
  /// `https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}`
  /// or
  /// `https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}`.
  /// To configure a plugin extension, `service` must be a reference to a
  /// \[`WasmPlugin`
  /// resource\](https://cloud.google.com/service-extensions/docs/reference/rest/v1beta1/projects.locations.wasmPlugins)
  /// in the format:
  /// `projects/{project}/locations/{location}/wasmPlugins/{plugin}` or
  /// `//networkservices.googleapis.com/projects/{project}/locations/{location}/wasmPlugins/{wasmPlugin}`.
  /// Plugin extensions are currently supported for the `LbTrafficExtension`,
  /// the `LbRouteExtension`, and the `LbEdgeExtension` resources.
  ///
  /// Required.
  core.String? service;

  /// A set of events during request or response processing for which this
  /// extension is called.
  ///
  /// For the `LbTrafficExtension` resource, this field is required. For the
  /// `LbRouteExtension` resource, this field is optional. If unspecified,
  /// `REQUEST_HEADERS` event is assumed as supported. For the `LbEdgeExtension`
  /// resource, this field is required and must only contain `REQUEST_HEADERS`
  /// event.
  ///
  /// Optional.
  core.List<core.String>? supportedEvents;

  /// Specifies the timeout for each individual message on the stream.
  ///
  /// The timeout must be between `10`-`10000` milliseconds. Required for
  /// callout extensions. This field is not supported for plugin extensions.
  /// Setting it results in a validation error.
  ///
  /// Optional.
  core.String? timeout;

  ExtensionChainExtension({
    this.allowDynamicForwarding,
    this.authority,
    this.failOpen,
    this.forwardHeaders,
    this.metadata,
    this.name,
    this.requestBodySendMode,
    this.responseBodySendMode,
    this.service,
    this.supportedEvents,
    this.timeout,
  });

  ExtensionChainExtension.fromJson(core.Map json_)
    : this(
        allowDynamicForwarding: json_['allowDynamicForwarding'] as core.bool?,
        authority: json_['authority'] as core.String?,
        failOpen: json_['failOpen'] as core.bool?,
        forwardHeaders:
            (json_['forwardHeaders'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        requestBodySendMode: json_['requestBodySendMode'] as core.String?,
        responseBodySendMode: json_['responseBodySendMode'] as core.String?,
        service: json_['service'] as core.String?,
        supportedEvents:
            (json_['supportedEvents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowDynamicForwarding != null)
      'allowDynamicForwarding': allowDynamicForwarding!,
    if (authority != null) 'authority': authority!,
    if (failOpen != null) 'failOpen': failOpen!,
    if (forwardHeaders != null) 'forwardHeaders': forwardHeaders!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (requestBodySendMode != null)
      'requestBodySendMode': requestBodySendMode!,
    if (responseBodySendMode != null)
      'responseBodySendMode': responseBodySendMode!,
    if (service != null) 'service': service!,
    if (supportedEvents != null) 'supportedEvents': supportedEvents!,
    if (timeout != null) 'timeout': timeout!,
  };
}

/// Conditions under which this chain is invoked for a request.
typedef ExtensionChainMatchCondition = $ExtensionChainMatchCondition;

/// Gateway represents the configuration for a proxy, typically a load balancer.
///
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway.
typedef Gateway = $Gateway;

/// GatewayRouteView defines view-only resource for Routes to a Gateway
typedef GatewayRouteView = $GatewayRouteView;

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

  /// Identifier.
  ///
  /// Name of the GrpcRoute resource. It matches pattern `projects / *
  /// /locations/global/grpcRoutes/`
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        gateways:
            (json_['gateways'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        hostnames:
            (json_['hostnames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        meshes:
            (json_['meshes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => GrpcRouteRouteRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
typedef GrpcRouteDestination = $GrpcRouteDestination;

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

  GrpcRouteFaultInjectionPolicy({this.abort, this.delay});

  GrpcRouteFaultInjectionPolicy.fromJson(core.Map json_)
    : this(
        abort:
            json_.containsKey('abort')
                ? GrpcRouteFaultInjectionPolicyAbort.fromJson(
                  json_['abort'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        delay:
            json_.containsKey('delay')
                ? GrpcRouteFaultInjectionPolicyDelay.fromJson(
                  json_['delay'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GrpcRouteHeaderMatch = $GrpcRouteHeaderMatch;

/// Specifies a match against a method.
typedef GrpcRouteMethodMatch = $GrpcRouteMethodMatch;

/// The specifications for retries.
///
/// Specifies one or more conditions for which this retry rule applies. Valid
/// values are:
typedef GrpcRouteRetryPolicy = $GrpcRouteRetryPolicy;

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
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => GrpcRouteDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        faultInjectionPolicy:
            json_.containsKey('faultInjectionPolicy')
                ? GrpcRouteFaultInjectionPolicy.fromJson(
                  json_['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        idleTimeout: json_['idleTimeout'] as core.String?,
        retryPolicy:
            json_.containsKey('retryPolicy')
                ? GrpcRouteRetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        statefulSessionAffinity:
            json_.containsKey('statefulSessionAffinity')
                ? GrpcRouteStatefulSessionAffinityPolicy.fromJson(
                  json_['statefulSessionAffinity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeout: json_['timeout'] as core.String?,
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

  GrpcRouteRouteMatch({this.headers, this.method});

  GrpcRouteRouteMatch.fromJson(core.Map json_)
    : this(
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => GrpcRouteHeaderMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        method:
            json_.containsKey('method')
                ? GrpcRouteMethodMatch.fromJson(
                  json_['method'] as core.Map<core.String, core.dynamic>,
                )
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

  GrpcRouteRouteRule({this.action, this.matches});

  GrpcRouteRouteRule.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? GrpcRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matches:
            (json_['matches'] as core.List?)
                ?.map(
                  (value) => GrpcRouteRouteMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
typedef GrpcRouteStatefulSessionAffinityPolicy =
    $RouteStatefulSessionAffinityPolicy;

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

  /// Identifier.
  ///
  /// Name of the HttpRoute resource. It matches pattern `projects / *
  /// /locations/global/httpRoutes/http_route_name>`.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        gateways:
            (json_['gateways'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        hostnames:
            (json_['hostnames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        meshes:
            (json_['meshes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => HttpRouteRouteRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
typedef HttpRouteCorsPolicy = $HttpRouteCorsPolicy;

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
        requestHeaderModifier:
            json_.containsKey('requestHeaderModifier')
                ? HttpRouteHeaderModifier.fromJson(
                  json_['requestHeaderModifier']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseHeaderModifier:
            json_.containsKey('responseHeaderModifier')
                ? HttpRouteHeaderModifier.fromJson(
                  json_['responseHeaderModifier']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceName: json_['serviceName'] as core.String?,
        weight: json_['weight'] as core.int?,
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

  HttpRouteFaultInjectionPolicy({this.abort, this.delay});

  HttpRouteFaultInjectionPolicy.fromJson(core.Map json_)
    : this(
        abort:
            json_.containsKey('abort')
                ? HttpRouteFaultInjectionPolicyAbort.fromJson(
                  json_['abort'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        delay:
            json_.containsKey('delay')
                ? HttpRouteFaultInjectionPolicyDelay.fromJson(
                  json_['delay'] as core.Map<core.String, core.dynamic>,
                )
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
        exactMatch: json_['exactMatch'] as core.String?,
        header: json_['header'] as core.String?,
        invertMatch: json_['invertMatch'] as core.bool?,
        prefixMatch: json_['prefixMatch'] as core.String?,
        presentMatch: json_['presentMatch'] as core.bool?,
        rangeMatch:
            json_.containsKey('rangeMatch')
                ? HttpRouteHeaderMatchIntegerRange.fromJson(
                  json_['rangeMatch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        regexMatch: json_['regexMatch'] as core.String?,
        suffixMatch: json_['suffixMatch'] as core.String?,
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
typedef HttpRouteHeaderMatchIntegerRange = $HttpRouteHeaderMatchIntegerRange;

/// The specification for modifying HTTP header in HTTP request and HTTP
/// response.
typedef HttpRouteHeaderModifier = $HttpRouteHeaderModifier;

/// Static HTTP response object to be returned.
typedef HttpRouteHttpDirectResponse = $HttpRouteHttpDirectResponse;

/// Specifications to match a query parameter in the request.
typedef HttpRouteQueryParameterMatch = $HttpRouteQueryParameterMatch;

/// The specification for redirecting traffic.
typedef HttpRouteRedirect = $HttpRouteRedirect;

/// Specifies the policy on how requests are shadowed to a separate mirrored
/// destination service.
///
/// The proxy does not wait for responses from the shadow service. Prior to
/// sending traffic to the shadow service, the host/authority header is suffixed
/// with -shadow. Mirroring is currently not supported for Cloud Run
/// destinations.
class HttpRouteRequestMirrorPolicy {
  /// The destination the requests will be mirrored to.
  ///
  /// The weight of the destination will be ignored.
  HttpRouteDestination? destination;

  /// The percentage of requests to get mirrored to the desired destination.
  ///
  /// Optional.
  core.double? mirrorPercent;

  HttpRouteRequestMirrorPolicy({this.destination, this.mirrorPercent});

  HttpRouteRequestMirrorPolicy.fromJson(core.Map json_)
    : this(
        destination:
            json_.containsKey('destination')
                ? HttpRouteDestination.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mirrorPercent: (json_['mirrorPercent'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
    if (mirrorPercent != null) 'mirrorPercent': mirrorPercent!,
  };
}

/// The specifications for retries.
typedef HttpRouteRetryPolicy = $HttpRouteRetryPolicy;

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
        corsPolicy:
            json_.containsKey('corsPolicy')
                ? HttpRouteCorsPolicy.fromJson(
                  json_['corsPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => HttpRouteDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        directResponse:
            json_.containsKey('directResponse')
                ? HttpRouteHttpDirectResponse.fromJson(
                  json_['directResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        faultInjectionPolicy:
            json_.containsKey('faultInjectionPolicy')
                ? HttpRouteFaultInjectionPolicy.fromJson(
                  json_['faultInjectionPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        idleTimeout: json_['idleTimeout'] as core.String?,
        redirect:
            json_.containsKey('redirect')
                ? HttpRouteRedirect.fromJson(
                  json_['redirect'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestHeaderModifier:
            json_.containsKey('requestHeaderModifier')
                ? HttpRouteHeaderModifier.fromJson(
                  json_['requestHeaderModifier']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestMirrorPolicy:
            json_.containsKey('requestMirrorPolicy')
                ? HttpRouteRequestMirrorPolicy.fromJson(
                  json_['requestMirrorPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseHeaderModifier:
            json_.containsKey('responseHeaderModifier')
                ? HttpRouteHeaderModifier.fromJson(
                  json_['responseHeaderModifier']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        retryPolicy:
            json_.containsKey('retryPolicy')
                ? HttpRouteRetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        statefulSessionAffinity:
            json_.containsKey('statefulSessionAffinity')
                ? HttpRouteStatefulSessionAffinityPolicy.fromJson(
                  json_['statefulSessionAffinity']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeout: json_['timeout'] as core.String?,
        urlRewrite:
            json_.containsKey('urlRewrite')
                ? HttpRouteURLRewrite.fromJson(
                  json_['urlRewrite'] as core.Map<core.String, core.dynamic>,
                )
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
        fullPathMatch: json_['fullPathMatch'] as core.String?,
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => HttpRouteHeaderMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ignoreCase: json_['ignoreCase'] as core.bool?,
        prefixMatch: json_['prefixMatch'] as core.String?,
        queryParameters:
            (json_['queryParameters'] as core.List?)
                ?.map(
                  (value) => HttpRouteQueryParameterMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        regexMatch: json_['regexMatch'] as core.String?,
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

  HttpRouteRouteRule({this.action, this.matches});

  HttpRouteRouteRule.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? HttpRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matches:
            (json_['matches'] as core.List?)
                ?.map(
                  (value) => HttpRouteRouteMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
typedef HttpRouteStatefulSessionAffinityPolicy =
    $RouteStatefulSessionAffinityPolicy;

/// The specification for modifying the URL of the request, prior to forwarding
/// the request to the destination.
typedef HttpRouteURLRewrite = $HttpRouteURLRewrite;

/// `LbEdgeExtension` is a resource that lets the extension service influence
/// the selection of backend services and Cloud CDN cache keys by modifying
/// request headers.
class LbEdgeExtension {
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
  /// extension is attached.
  ///
  /// At least one forwarding rule is required. Only one `LbEdgeExtension`
  /// resource can be associated with a forwarding rule.
  ///
  /// Required.
  core.List<core.String>? forwardingRules;

  /// Set of labels associated with the `LbEdgeExtension` resource.
  ///
  /// The format must comply with
  /// [the requirements for labels](https://cloud.google.com/compute/docs/labeling-resources#requirements)
  /// for Google Cloud resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// All forwarding rules referenced by this extension must share the same load
  /// balancing scheme.
  ///
  /// Supported values: `EXTERNAL_MANAGED`.
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
  /// Name of the `LbEdgeExtension` resource in the following format:
  /// `projects/{project}/locations/{location}/lbEdgeExtensions/{lb_edge_extension}`.
  ///
  /// Required.
  core.String? name;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  LbEdgeExtension({
    this.createTime,
    this.description,
    this.extensionChains,
    this.forwardingRules,
    this.labels,
    this.loadBalancingScheme,
    this.name,
    this.updateTime,
  });

  LbEdgeExtension.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        extensionChains:
            (json_['extensionChains'] as core.List?)
                ?.map(
                  (value) => ExtensionChain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        forwardingRules:
            (json_['forwardingRules'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loadBalancingScheme: json_['loadBalancingScheme'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
  /// extension is attached.
  ///
  /// At least one forwarding rule is required. Only one `LbRouteExtension`
  /// resource can be associated with a forwarding rule.
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
  /// [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOAD_BALANCING_SCHEME_UNSPECIFIED" : Default value. Do not use.
  /// - "INTERNAL_MANAGED" : Signifies that this is used for Internal HTTP(S)
  /// Load Balancing.
  /// - "EXTERNAL_MANAGED" : Signifies that this is used for External Managed
  /// HTTP(S) Load Balancing.
  core.String? loadBalancingScheme;

  /// The metadata provided here is included as part of the `metadata_context`
  /// (of type `google.protobuf.Struct`) in the `ProcessingRequest` message sent
  /// to the extension server.
  ///
  /// The metadata applies to all extensions in all extensions chains in this
  /// resource. The metadata is available under the key
  /// `com.google.lb_route_extension.`. The following variables are supported in
  /// the metadata: `{forwarding_rule_id}` - substituted with the forwarding
  /// rule's fully qualified resource name. This field must not be set if at
  /// least one of the extension chains contains plugin extensions. Setting it
  /// results in a validation error. You can set metadata at either the resource
  /// level or the extension level. The extension level metadata is recommended
  /// because you can pass a different set of metadata through each extension to
  /// the backend.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

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
    this.metadata,
    this.name,
    this.updateTime,
  });

  LbRouteExtension.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        extensionChains:
            (json_['extensionChains'] as core.List?)
                ?.map(
                  (value) => ExtensionChain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        forwardingRules:
            (json_['forwardingRules'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loadBalancingScheme: json_['loadBalancingScheme'] as core.String?,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (extensionChains != null) 'extensionChains': extensionChains!,
    if (forwardingRules != null) 'forwardingRules': forwardingRules!,
    if (labels != null) 'labels': labels!,
    if (loadBalancingScheme != null)
      'loadBalancingScheme': loadBalancingScheme!,
    if (metadata != null) 'metadata': metadata!,
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
  /// extension is attached.
  ///
  /// At least one forwarding rule is required. Only one `LbTrafficExtension`
  /// resource can be associated with a forwarding rule.
  ///
  /// Optional.
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
  /// Supported values: `INTERNAL_MANAGED` and `EXTERNAL_MANAGED`. For more
  /// information, refer to
  /// [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOAD_BALANCING_SCHEME_UNSPECIFIED" : Default value. Do not use.
  /// - "INTERNAL_MANAGED" : Signifies that this is used for Internal HTTP(S)
  /// Load Balancing.
  /// - "EXTERNAL_MANAGED" : Signifies that this is used for External Managed
  /// HTTP(S) Load Balancing.
  core.String? loadBalancingScheme;

  /// The metadata provided here is included as part of the `metadata_context`
  /// (of type `google.protobuf.Struct`) in the `ProcessingRequest` message sent
  /// to the extension server.
  ///
  /// The metadata applies to all extensions in all extensions chains in this
  /// resource. The metadata is available under the key
  /// `com.google.lb_traffic_extension.`. The following variables are supported
  /// in the metadata: `{forwarding_rule_id}` - substituted with the forwarding
  /// rule's fully qualified resource name. This field must not be set if at
  /// least one of the extension chains contains plugin extensions. Setting it
  /// results in a validation error. You can set metadata at either the resource
  /// level or the extension level. The extension level metadata is recommended
  /// because you can pass a different set of metadata through each extension to
  /// the backend.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

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
    this.metadata,
    this.name,
    this.updateTime,
  });

  LbTrafficExtension.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        extensionChains:
            (json_['extensionChains'] as core.List?)
                ?.map(
                  (value) => ExtensionChain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        forwardingRules:
            (json_['forwardingRules'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loadBalancingScheme: json_['loadBalancingScheme'] as core.String?,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (extensionChains != null) 'extensionChains': extensionChains!,
    if (forwardingRules != null) 'forwardingRules': forwardingRules!,
    if (labels != null) 'labels': labels!,
    if (loadBalancingScheme != null)
      'loadBalancingScheme': loadBalancingScheme!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message for response to listing `AuthzExtension` resources.
class ListAuthzExtensionsResponse {
  /// The list of `AuthzExtension` resources.
  core.List<AuthzExtension>? authzExtensions;

  /// A token identifying a page of results that the server returns.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAuthzExtensionsResponse({
    this.authzExtensions,
    this.nextPageToken,
    this.unreachable,
  });

  ListAuthzExtensionsResponse.fromJson(core.Map json_)
    : this(
        authzExtensions:
            (json_['authzExtensions'] as core.List?)
                ?.map(
                  (value) => AuthzExtension.fromJson(
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
    if (authzExtensions != null) 'authzExtensions': authzExtensions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into return_partial_success and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListEndpointPoliciesResponse({
    this.endpointPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListEndpointPoliciesResponse.fromJson(core.Map json_)
    : this(
        endpointPolicies:
            (json_['endpointPolicies'] as core.List?)
                ?.map(
                  (value) => EndpointPolicy.fromJson(
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
    if (endpointPolicies != null) 'endpointPolicies': endpointPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListGatewayRouteViews method.
class ListGatewayRouteViewsResponse {
  /// List of GatewayRouteView resources.
  core.List<GatewayRouteView>? gatewayRouteViews;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  ListGatewayRouteViewsResponse({
    this.gatewayRouteViews,
    this.nextPageToken,
    this.unreachable,
  });

  ListGatewayRouteViewsResponse.fromJson(core.Map json_)
    : this(
        gatewayRouteViews:
            (json_['gatewayRouteViews'] as core.List?)
                ?.map(
                  (value) => GatewayRouteView.fromJson(
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
    if (gatewayRouteViews != null) 'gatewayRouteViews': gatewayRouteViews!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  ListGatewaysResponse({this.gateways, this.nextPageToken, this.unreachable});

  ListGatewaysResponse.fromJson(core.Map json_)
    : this(
        gateways:
            (json_['gateways'] as core.List?)
                ?.map(
                  (value) => Gateway.fromJson(
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into return_partial_success and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListGrpcRoutesResponse({
    this.grpcRoutes,
    this.nextPageToken,
    this.unreachable,
  });

  ListGrpcRoutesResponse.fromJson(core.Map json_)
    : this(
        grpcRoutes:
            (json_['grpcRoutes'] as core.List?)
                ?.map(
                  (value) => GrpcRoute.fromJson(
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
    if (grpcRoutes != null) 'grpcRoutes': grpcRoutes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into return_partial_success and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListHttpRoutesResponse({
    this.httpRoutes,
    this.nextPageToken,
    this.unreachable,
  });

  ListHttpRoutesResponse.fromJson(core.Map json_)
    : this(
        httpRoutes:
            (json_['httpRoutes'] as core.List?)
                ?.map(
                  (value) => HttpRoute.fromJson(
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
    if (httpRoutes != null) 'httpRoutes': httpRoutes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing `LbEdgeExtension` resources.
class ListLbEdgeExtensionsResponse {
  /// The list of `LbEdgeExtension` resources.
  core.List<LbEdgeExtension>? lbEdgeExtensions;

  /// A token identifying a page of results that the server returns.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListLbEdgeExtensionsResponse({
    this.lbEdgeExtensions,
    this.nextPageToken,
    this.unreachable,
  });

  ListLbEdgeExtensionsResponse.fromJson(core.Map json_)
    : this(
        lbEdgeExtensions:
            (json_['lbEdgeExtensions'] as core.List?)
                ?.map(
                  (value) => LbEdgeExtension.fromJson(
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
    if (lbEdgeExtensions != null) 'lbEdgeExtensions': lbEdgeExtensions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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
        lbRouteExtensions:
            (json_['lbRouteExtensions'] as core.List?)
                ?.map(
                  (value) => LbRouteExtension.fromJson(
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
        lbTrafficExtensions:
            (json_['lbTrafficExtensions'] as core.List?)
                ?.map(
                  (value) => LbTrafficExtension.fromJson(
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

/// Response returned by the ListMeshRouteViews method.
class ListMeshRouteViewsResponse {
  /// List of MeshRouteView resources.
  core.List<MeshRouteView>? meshRouteViews;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  ListMeshRouteViewsResponse({
    this.meshRouteViews,
    this.nextPageToken,
    this.unreachable,
  });

  ListMeshRouteViewsResponse.fromJson(core.Map json_)
    : this(
        meshRouteViews:
            (json_['meshRouteViews'] as core.List?)
                ?.map(
                  (value) => MeshRouteView.fromJson(
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
    if (meshRouteViews != null) 'meshRouteViews': meshRouteViews!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into `return_partial_success` and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListMeshesResponse({this.meshes, this.nextPageToken, this.unreachable});

  ListMeshesResponse.fromJson(core.Map json_)
    : this(
        meshes:
            (json_['meshes'] as core.List?)
                ?.map(
                  (value) => Mesh.fromJson(
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
    if (meshes != null) 'meshes': meshes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

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

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  ListServiceBindingsResponse({
    this.nextPageToken,
    this.serviceBindings,
    this.unreachable,
  });

  ListServiceBindingsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceBindings:
            (json_['serviceBindings'] as core.List?)
                ?.map(
                  (value) => ServiceBinding.fromJson(
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
    if (serviceBindings != null) 'serviceBindings': serviceBindings!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  ListServiceLbPoliciesResponse({
    this.nextPageToken,
    this.serviceLbPolicies,
    this.unreachable,
  });

  ListServiceLbPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceLbPolicies:
            (json_['serviceLbPolicies'] as core.List?)
                ?.map(
                  (value) => ServiceLbPolicy.fromJson(
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
    if (serviceLbPolicies != null) 'serviceLbPolicies': serviceLbPolicies!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into return_partial_success and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListTcpRoutesResponse({this.nextPageToken, this.tcpRoutes, this.unreachable});

  ListTcpRoutesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tcpRoutes:
            (json_['tcpRoutes'] as core.List?)
                ?.map(
                  (value) => TcpRoute.fromJson(
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
    if (tcpRoutes != null) 'tcpRoutes': tcpRoutes!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unreachable resources.
  ///
  /// Populated when the request opts into return_partial_success and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListTlsRoutesResponse({this.nextPageToken, this.tlsRoutes, this.unreachable});

  ListTlsRoutesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tlsRoutes:
            (json_['tlsRoutes'] as core.List?)
                ?.map(
                  (value) => TlsRoute.fromJson(
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
    if (tlsRoutes != null) 'tlsRoutes': tlsRoutes!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the `ListWasmPluginVersions` method.
class ListWasmPluginVersionsResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  /// List of `WasmPluginVersion` resources.
  core.List<WasmPluginVersion>? wasmPluginVersions;

  ListWasmPluginVersionsResponse({
    this.nextPageToken,
    this.unreachable,
    this.wasmPluginVersions,
  });

  ListWasmPluginVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        wasmPluginVersions:
            (json_['wasmPluginVersions'] as core.List?)
                ?.map(
                  (value) => WasmPluginVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (wasmPluginVersions != null) 'wasmPluginVersions': wasmPluginVersions!,
  };
}

/// Response returned by the `ListWasmPlugins` method.
class ListWasmPluginsResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Unreachable resources.
  ///
  /// Populated when the request attempts to list all resources across all
  /// supported locations, while some locations are temporarily unavailable.
  core.List<core.String>? unreachable;

  /// List of `WasmPlugin` resources.
  core.List<WasmPlugin>? wasmPlugins;

  ListWasmPluginsResponse({
    this.nextPageToken,
    this.unreachable,
    this.wasmPlugins,
  });

  ListWasmPluginsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        wasmPlugins:
            (json_['wasmPlugins'] as core.List?)
                ?.map(
                  (value) => WasmPlugin.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (wasmPlugins != null) 'wasmPlugins': wasmPlugins!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Mesh represents a logical configuration grouping for workload to workload
/// communication within a service mesh.
///
/// Routes that point to mesh dictate how requests are routed within this
/// logical mesh boundary.
typedef Mesh = $Mesh;

/// MeshRouteView defines view-only resource for Routes to a Mesh
typedef MeshRouteView = $MeshRouteView;

/// The matcher that is based on node metadata presented by xDS clients.
class MetadataLabelMatcher {
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
  core.List<MetadataLabels>? metadataLabels;

  MetadataLabelMatcher({this.metadataLabelMatchCriteria, this.metadataLabels});

  MetadataLabelMatcher.fromJson(core.Map json_)
    : this(
        metadataLabelMatchCriteria:
            json_['metadataLabelMatchCriteria'] as core.String?,
        metadataLabels:
            (json_['metadataLabels'] as core.List?)
                ?.map(
                  (value) => MetadataLabels.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metadataLabelMatchCriteria != null)
      'metadataLabelMatchCriteria': metadataLabelMatchCriteria!,
    if (metadataLabels != null) 'metadataLabels': metadataLabels!,
  };
}

/// Defines a name-pair value for a single label.
typedef MetadataLabels = $MetadataLabels;

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

/// ServiceBinding can be used to: - Bind a Service Directory Service to be used
/// in a BackendService resource.
///
/// This feature will be deprecated soon. - Bind a Private Service Connect
/// producer service to be used in consumer Cloud Service Mesh or Application
/// Load Balancers. - Bind a Cloud Run service to be used in consumer Cloud
/// Service Mesh or Application Load Balancers.
typedef ServiceBinding = $ServiceBinding;

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

  /// Configuration to provide isolation support for the associated Backend
  /// Service.
  ///
  /// Optional.
  ServiceLbPolicyIsolationConfig? isolationConfig;

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

  /// Identifier.
  ///
  /// Name of the ServiceLbPolicy resource. It matches pattern
  /// `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
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
    this.isolationConfig,
    this.labels,
    this.loadBalancingAlgorithm,
    this.name,
    this.updateTime,
  });

  ServiceLbPolicy.fromJson(core.Map json_)
    : this(
        autoCapacityDrain:
            json_.containsKey('autoCapacityDrain')
                ? ServiceLbPolicyAutoCapacityDrain.fromJson(
                  json_['autoCapacityDrain']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        failoverConfig:
            json_.containsKey('failoverConfig')
                ? ServiceLbPolicyFailoverConfig.fromJson(
                  json_['failoverConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        isolationConfig:
            json_.containsKey('isolationConfig')
                ? ServiceLbPolicyIsolationConfig.fromJson(
                  json_['isolationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loadBalancingAlgorithm: json_['loadBalancingAlgorithm'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoCapacityDrain != null) 'autoCapacityDrain': autoCapacityDrain!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (failoverConfig != null) 'failoverConfig': failoverConfig!,
    if (isolationConfig != null) 'isolationConfig': isolationConfig!,
    if (labels != null) 'labels': labels!,
    if (loadBalancingAlgorithm != null)
      'loadBalancingAlgorithm': loadBalancingAlgorithm!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Option to specify if an unhealthy IG/NEG should be considered for global
/// load balancing and traffic routing.
typedef ServiceLbPolicyAutoCapacityDrain = $ServiceLbPolicyAutoCapacityDrain;

/// Option to specify health based failover behavior.
///
/// This is not related to Network load balancer FailoverPolicy.
typedef ServiceLbPolicyFailoverConfig = $ServiceLbPolicyFailoverConfig;

/// Configuration to provide isolation support for the associated Backend
/// Service.
typedef ServiceLbPolicyIsolationConfig = $ServiceLbPolicyIsolationConfig;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

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

  /// Identifier.
  ///
  /// Name of the TcpRoute resource. It matches pattern `projects / *
  /// /locations/global/tcpRoutes/tcp_route_name>`.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        gateways:
            (json_['gateways'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        meshes:
            (json_['meshes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => TcpRouteRouteRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => TcpRouteRouteDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        idleTimeout: json_['idleTimeout'] as core.String?,
        originalDestination: json_['originalDestination'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (idleTimeout != null) 'idleTimeout': idleTimeout!,
    if (originalDestination != null)
      'originalDestination': originalDestination!,
  };
}

/// Describe the destination for traffic to be routed to.
typedef TcpRouteRouteDestination = $TcpRouteRouteDestination;

/// RouteMatch defines the predicate used to match requests to a given action.
///
/// Multiple match types are "OR"ed for evaluation. If no routeMatch field is
/// specified, this rule will unconditionally match traffic.
typedef TcpRouteRouteMatch = $TcpRouteRouteMatch;

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

  TcpRouteRouteRule({this.action, this.matches});

  TcpRouteRouteRule.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? TcpRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matches:
            (json_['matches'] as core.List?)
                ?.map(
                  (value) => TcpRouteRouteMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (matches != null) 'matches': matches!,
  };
}

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

  /// Identifier.
  ///
  /// Name of the TlsRoute resource. It matches pattern `projects / *
  /// /locations/global/tlsRoutes/tls_route_name>`.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        gateways:
            (json_['gateways'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        meshes:
            (json_['meshes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => TlsRouteRouteRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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

  TlsRouteRouteAction({this.destinations, this.idleTimeout});

  TlsRouteRouteAction.fromJson(core.Map json_)
    : this(
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => TlsRouteRouteDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        idleTimeout: json_['idleTimeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (idleTimeout != null) 'idleTimeout': idleTimeout!,
  };
}

/// Describe the destination for traffic to be routed to.
typedef TlsRouteRouteDestination = $TlsRouteRouteDestination;

/// RouteMatch defines the predicate used to match requests to a given action.
///
/// Multiple match types are "AND"ed for evaluation.
typedef TlsRouteRouteMatch = $TlsRouteRouteMatch;

/// Specifies how to match traffic and how to route traffic when traffic is
/// matched.
class TlsRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  ///
  /// Required.
  TlsRouteRouteAction? action;

  /// RouteMatch defines the predicate used to match requests to a given action.
  ///
  /// Multiple match types are "OR"ed for evaluation. Atleast one RouteMatch
  /// must be supplied.
  ///
  /// Required.
  core.List<TlsRouteRouteMatch>? matches;

  TlsRouteRouteRule({this.action, this.matches});

  TlsRouteRouteRule.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? TlsRouteRouteAction.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        matches:
            (json_['matches'] as core.List?)
                ?.map(
                  (value) => TlsRouteRouteMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (matches != null) 'matches': matches!,
  };
}

/// Specification of a port-based selector.
typedef TrafficPortSelector = $TrafficPortSelector;

/// `WasmPlugin` is a resource representing a service executing a
/// customer-provided Wasm module.
class WasmPlugin {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human-readable description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Set of labels associated with the `WasmPlugin` resource.
  ///
  /// The format must comply with \[the following
  /// requirements\](/compute/docs/labeling-resources#requirements).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Specifies the logging options for the activity performed by this plugin.
  ///
  /// If logging is enabled, plugin logs are exported to Cloud Logging. Note
  /// that the settings relate to the logs generated by using logging statements
  /// in your Wasm code.
  ///
  /// Optional.
  WasmPluginLogConfig? logConfig;

  /// The ID of the `WasmPluginVersion` resource that is the currently serving
  /// one.
  ///
  /// The version referred to must be a child of this `WasmPlugin` resource.
  ///
  /// Optional.
  core.String? mainVersionId;

  /// Identifier.
  ///
  /// Name of the `WasmPlugin` resource in the following format:
  /// `projects/{project}/locations/{location}/wasmPlugins/{wasm_plugin}`.
  core.String? name;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// List of all
  /// [extensions](https://cloud.google.com/service-extensions/docs/overview)
  /// that use this `WasmPlugin` resource.
  ///
  /// Output only.
  core.List<WasmPluginUsedBy>? usedBy;

  /// All versions of this `WasmPlugin` resource in the key-value format.
  ///
  /// The key is the resource ID, and the value is the `VersionDetails` object.
  /// Lets you create or update a `WasmPlugin` resource and its versions in a
  /// single request. When the `main_version_id` field is not empty, it must
  /// point to one of the `VersionDetails` objects in the map. If provided in a
  /// `PATCH` request, the new versions replace the previous set. Any version
  /// omitted from the `versions` field is removed. Because the
  /// `WasmPluginVersion` resource is immutable, if a `WasmPluginVersion`
  /// resource with the same name already exists and differs, the request fails.
  /// Note: In a `GET` request, this field is populated only if the field
  /// `GetWasmPluginRequest.view` is set to `WASM_PLUGIN_VIEW_FULL`.
  ///
  /// Optional.
  core.Map<core.String, WasmPluginVersionDetails>? versions;

  WasmPlugin({
    this.createTime,
    this.description,
    this.labels,
    this.logConfig,
    this.mainVersionId,
    this.name,
    this.updateTime,
    this.usedBy,
    this.versions,
  });

  WasmPlugin.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        logConfig:
            json_.containsKey('logConfig')
                ? WasmPluginLogConfig.fromJson(
                  json_['logConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mainVersionId: json_['mainVersionId'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        usedBy:
            (json_['usedBy'] as core.List?)
                ?.map(
                  (value) => WasmPluginUsedBy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        versions: (json_['versions'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                WasmPluginVersionDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (logConfig != null) 'logConfig': logConfig!,
    if (mainVersionId != null) 'mainVersionId': mainVersionId!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (usedBy != null) 'usedBy': usedBy!,
    if (versions != null) 'versions': versions!,
  };
}

/// Specifies the logging options for the activity performed by this plugin.
///
/// If logging is enabled, plugin logs are exported to Cloud Logging.
typedef WasmPluginLogConfig = $WasmPluginLogConfig;

/// Defines a resource that uses the `WasmPlugin` resource.
typedef WasmPluginUsedBy = $WasmPluginUsedBy;

/// A single immutable version of a `WasmPlugin` resource.
///
/// Defines the Wasm module used and optionally its runtime config.
typedef WasmPluginVersion = $WasmPluginVersion;

/// Details of a `WasmPluginVersion` resource to be inlined in the `WasmPlugin`
/// resource.
typedef WasmPluginVersionDetails = $WasmPluginVersionDetails;
